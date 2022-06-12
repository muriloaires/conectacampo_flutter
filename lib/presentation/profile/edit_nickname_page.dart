import 'package:conectacampo/application/profile/edit/edit_profile_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EditNickNamePage extends StatelessWidget {
  const EditNickNamePage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) =>
          getIt<EditProfileBloc>()..add(const EditProfileEvent.started()),
      child: EditNickNameForm(),
    );
  }
}

class EditNickNameForm extends StatelessWidget {
  const EditNickNameForm();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
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
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              child: ListView(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Como quer ser chamado?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorSet.colorPrimaryGreen,
                          fontSize: 40),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Nome ou apelido',
                    style: TextStyle(height: 2),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  TextFormField(
                    onChanged: (value) => context
                        .read<EditProfileBloc>()
                        .add(EditProfileEvent.nicknameChanged(value)),
                    validator: (_) => context
                        .read<EditProfileBloc>()
                        .state
                        .nickname
                        .value
                        .fold(
                          (l) => l.maybeMap(
                            invalidNickname: (_) => 'Apelido inválido',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(fontSize: 24),
                        hintText: 'Como quer ser chamado?'),
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Visibility(
            visible: context.read<EditProfileBloc>().state.nickname.isValid(),
            child: FloatingActionButton(
              backgroundColor: ColorSet.colorPrimaryGreenButton,
              onPressed: () {
                context
                    .read<EditProfileBloc>()
                    .add(const EditProfileEvent.floatingActionButtonPressed());
              },
              child: const Icon(Icons.chevron_right),
            ),
          ),
        );
      },
      listener: (context, state) {
        final state = context.read<EditProfileBloc>().state;
        if (state.showProgress) {
          EasyLoading.show(status: 'Atualizando', dismissOnTap: false);
        } else {
          EasyLoading.dismiss();
        }

        final String? errorMessage = state.userUpdateSuccessOrFailure?.fold(
          (l) => l.maybeMap(
            serverError: (serverError) => 'Algo errado ocorreu',
            invalidFullName: (invalidFullName) => 'Nome inválido',
            invalidNickname: (invalidNickname) => 'Apelido inválido',
            applicationError: (applicationError) => 'Algo errado ocorreu',
            orElse: () => null,
          ),
          (r) {
            EasyLoading.showSuccess(
              'Dados alterados com sucesso',
              duration: const Duration(seconds: 2),
            );
            Navigator.of(context).pop();
            return null;
          },
        );
        if (errorMessage != null) {
          EasyLoading.showError(
            errorMessage,
            duration: const Duration(seconds: 2),
          );
        }
      },
    );
  }
}
