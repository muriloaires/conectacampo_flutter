import 'package:conectacampo/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorSet.colorPrimaryGreenButton,
        onPressed: () {
          context
              .read<SignUpFormBloc>()
              .add(const SignUpFormBlocEvent.btnSignUpPressed());
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/dots.png',
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: BlocConsumer<SignUpFormBloc, SignUpFormBlocState>(
                listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                  () => {},
                  (either) => either.fold((failure) {
                        final String errorText = failure.maybeMap(
                            serverError: (_) => 'Erro interno',
                            invalidPhoneNumber: (_) =>
                                'Número de telefone inválido',
                            invalidVerificationId: (_) =>
                                'A verificação falhou. Tente novamente',
                            applicationError: (_) => 'A aplicação falhou',
                            orElse: () => '');
                        if (errorText.isEmpty == false) {
                          final snackBar = SnackBar(content: Text(errorText));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }, (_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlacesPage()),
                        );
                      }));
            }, builder: (context, state) {
              return Form(
                autovalidate: state.showErrorMessages,
                child: ListView(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Queremos saber quem é você',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.colorPrimaryGreen,
                            fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Digite seu nome e sobrenome',
                      style: TextStyle(height: 2),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      onChanged: (value) => context
                          .read<SignUpFormBloc>()
                          .add(SignUpFormBlocEvent.fullNameChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
                          .state
                          .fullName
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  invalidFullName: (_) => 'Nome inválido',
                                  missingSurname: (_) => 'Sobrenome ausente',
                                  orElse: () => null),
                              (_) => null),
                      keyboardType: TextInputType.name,
                      decoration:
                          const InputDecoration(hintText: 'Nome completo'),
                      style:
                          const TextStyle(fontSize: 24, fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Como gostaria de ser chamado no app?',
                      style: TextStyle(height: 2),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      onChanged: (value) => context
                          .read<SignUpFormBloc>()
                          .add(SignUpFormBlocEvent.nicknameChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
                          .state
                          .nickname
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  invalidNickname: (_) => 'Apelido ausente',
                                  orElse: () => null),
                              (_) => null),
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          hintStyle:
                              TextStyle(fontSize: 24, fontFamily: 'Roboto'),
                          hintText: 'Nome ou apelido'),
                      style:
                          const TextStyle(fontSize: 24, fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Visibility(
                        visible:
                            context.read<SignUpFormBloc>().state.isSubmitting,
                        child: const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              ColorSet.colorPrimaryGreenButton),
                        )),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
