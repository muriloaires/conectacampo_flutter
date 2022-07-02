// ignore_for_file: use_build_context_synchronously, empty_catches, require_trailing_commas

import 'dart:async';
import 'dart:io';

import 'package:conectacampo/application/chat/chat_bloc.dart';
import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/chat/message/send_file_page.dart';
import 'package:conectacampo/presentation/chat/widgets/chat_app_bar.dart';
import 'package:conectacampo/presentation/chat/widgets/chat_background.dart';
import 'package:conectacampo/presentation/chat/widgets/chat_bottom_menu.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/splash_screen.dart';
import 'package:conectacampo/presentation/util/file_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatPage extends StatelessWidget {
  ChatPage(this.otherUser, this.chat);

  final User otherUser;
  final Chat chat;
  final _picker = ImagePicker();

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (context) =>
          ChatBloc(ChatFacade(), chat)..add(ChatEvent.started(chat, otherUser)),
      child: BlocConsumer<ChatBloc, ChatState>(
        listener: (context, state) async {
          state.uploadFileErrorOrSuccess?.fold(
            (l) => l.maybeMap(
              unauthorized: (unauthorized) async {
                await logout();
                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => SplashScreen(),
                  ),
                  (route) => false,
                );
              },
              orElse: () {},
            ),
            (r) => null,
          );
          await checkOpenOptions(state, context);
          await checkSendingOptions(state, context);
          if (state.scrollToEnd) {
            _scrollController.jumpTo(0.0);
          }
          if (state.uploadingFile) {
            EasyLoading.show(status: 'Enviando arquivo');
          } else {
            EasyLoading.dismiss();
          }
        },
        builder: (context, state) {
          final messages = context.read<ChatBloc>().state.messages;
          return Scaffold(
            backgroundColor: ColorSet.green1,
            appBar: ChatAppBar(),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        const ChatBackground(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: state.currentChat == null
                              ? const CircularProgressIndicator()
                              : ListView.separated(
                                  reverse: true,
                                  controller: _scrollController,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 10),
                                  itemCount: messages.length,
                                  itemBuilder: (context, index) {
                                    return BlocProvider(
                                      create: (context) => getIt<MessageBloc>()
                                        ..add(
                                          MessageEvent.started(
                                            chat,
                                            messages[index],
                                            context
                                                .read<ChatBloc>()
                                                .state
                                                .nextAudioToPlay,
                                          ),
                                        ),
                                      child: MessageWidget.fromType(
                                        messages[index],
                                        state.currentUser!,
                                        context
                                            .read<ChatBloc>()
                                            .state
                                            .nextAudioToPlay,
                                      ),
                                    );
                                  },
                                ),
                        )
                      ],
                    ),
                  ),
                  const ChatBottomMenu(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> checkSendingOptions(
    ChatState state,
    BuildContext context,
  ) async {
    if (state.fileSelected != null) {
      await openSendFile(state.fileSelected!, context);
    }
    if (state.imageSelected != null) {
      await openSendImage(state.imageSelected!, context);
    }
    if (state.locationSelected != null) {
      await openSendLocation(state.locationSelected!, context);
    }
  }

  Future<void> checkOpenOptions(ChatState state, BuildContext context) async {
    if (state.openFilePicker) {
      await chooseFile(context);
    }
    if (state.openImagePicker) {
      await chooseImage(context);
    }
    if (state.openLocationPicker) {
      chooseLocation(context);
    }
  }

  Future<void> chooseFile(BuildContext context) async {
    context.read<ChatBloc>().add(const ChatEvent.onFilePickerOpened());
    final status = await Permission.storage.request();
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (status != PermissionStatus.granted) {
      EasyLoading.showError('Permissão não concedida');
      return;
    }
    if (result != null) {
      File file = File(result.files.single.path ?? '');
      context.read<ChatBloc>().add(ChatEvent.onFileSelected(file.path));
    } else {
      // User canceled the picker
    }
  }

  Future<void> chooseImage(BuildContext context) async {
    context.read<ChatBloc>().add(const ChatEvent.onImagePickerOpened());
    final status = await Permission.photos.request();

    if (status != PermissionStatus.granted) {
      EasyLoading.showError('Permissão não concedida');
      return;
    }

    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      if (hasValidMimeType(pickedFile.path)) {
        context
            .read<ChatBloc>()
            .add(ChatEvent.onPhotoSelected(pickedFile.path));
      } else {
        EasyLoading.showError(
          'Formato inválido de imagem. Por favor escolha outra',
        );
      }
    }
  }

  void chooseLocation(BuildContext context) {
    context.read<ChatBloc>().add(const ChatEvent.onLocationPickerOpened());
  }

  Future<void> openSendFile(String fileSelected, BuildContext context) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute<String>(
        builder: (context) => SendFilePage('document', fileSelected),
      ),
    );

    if (result != null) {
      context.read<ChatBloc>().add(ChatEvent.onFileConfirmed(result));
    }
  }

  Future<void> openSendImage(
    String imageSelected,
    BuildContext context,
  ) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute<String>(
        builder: (context) => SendFilePage('image', imageSelected),
      ),
    );
    if (result != null) {
      context.read<ChatBloc>().add(ChatEvent.onPhotoConfirmed(result));
    }
  }

  Future<void> openSendLocation(
    String locationSelected,
    BuildContext context,
  ) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute<String>(
        builder: (context) =>
            SendFilePage('location', locationSelected.toString()),
      ),
    );
  }
}
