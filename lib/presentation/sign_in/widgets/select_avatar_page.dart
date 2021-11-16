import 'dart:io';
import 'dart:typed_data';

import 'package:conectacampo/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../places_page.dart';

class SelectAvatarPage extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 50,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: ColorSet.colorPrimaryGreenButton,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocProvider<SignUpFormBloc>(
        create: (context) =>
            getIt()..add(const SignUpFormBlocEvent.startedWithUser()),
        child: BlocConsumer<SignUpFormBloc, SignUpFormBlocState>(
          listener: (context, state) {
            if (state.isSubmitting) {
              EasyLoading.show(status: 'Criando usuário');
            } else {
              EasyLoading.dismiss();
            }

            state.authFailureOrSuccessOption.fold(
                () => null,
                (a) => a.fold(
                        (l) => EasyLoading.showError('Erro ${l.toString()}',
                            duration: const Duration(seconds: 2)), (r) async {
                      final success = await Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => PlacesPage()));
                      if (success != null) {
                        final userType = await loadLoggedUserType();
                        if (userType != null) {
                          if (userType == 'buyer') {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/buyer_main', (route) => false);
                          } else {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/seller_main', (route) => false);
                          }
                        }
                      }
                    }));
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 10, 32.0, 10),
              child: ListView(
                children: [
                  Text(
                    state.fullName?.getOrCrash() ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorSet.colorPrimaryGreen,
                        fontSize: 28),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      'Vamos adicionar uma foto para os seus clientes te reconhecerem?',
                      style: TextStyle(height: 2)),
                  const SizedBox(height: 40),
                  if (state.optionOfAvatar.isNone())
                    SvgPicture.asset('assets/placeholder.svg', height: 160)
                  else
                    CircleAvatar(
                      radius: 100,
                      foregroundImage: FileImage(
                        state.optionOfAvatar.foldRight(
                            File(''), (a, previous) => File(a as String)),
                      ),
                    ),
                  const SizedBox(height: 12),
                  const Text('Selecione as fotos\npara o seu perfil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2,
                      )),
                  const SizedBox(height: 40),
                  MaterialButton(
                    onPressed: () async {
                      final PickedFile? pickedFile =
                          await _picker.getImage(source: ImageSource.camera);
                      if (pickedFile != null) {
                        context.read<SignUpFormBloc>().add(
                            SignUpFormBlocEvent.photoSelected(pickedFile.path));
                      }
                    },
                    color: ColorSet.green2,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    textColor: Colors.white,
                    child: const Text(
                      'Tirar foto',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      final PickedFile? pickedFile =
                          await _picker.getImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        context.read<SignUpFormBloc>().add(
                            SignUpFormBlocEvent.photoSelected(pickedFile.path));
                      }
                    },
                    color: ColorSet.green2,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    textColor: Colors.white,
                    child: const Text('Escolher da galeria',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Visibility(
                    visible: state.optionOfAvatar.isSome(),
                    child: MaterialButton(
                      onPressed: () {
                        context.read<SignUpFormBloc>().add(
                            const SignUpFormBlocEvent.btnConcluirPressed());
                      },
                      color: ColorSet.green2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      textColor: Colors.white,
                      child: const Text('Concluir',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
