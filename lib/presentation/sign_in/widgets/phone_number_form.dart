import 'package:conectacampo/application/auth/phone_number_form/sign_in_form_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/sms_code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberForm extends StatelessWidget {
  final _maskFormatter = MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  final String _textStatus = '';

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
              .read<SignInFormBloc>()
              .add(const SignInFormEvent.verifyPhoneNumberPressed());
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
            child: BlocConsumer<SignInFormBloc, SignInFormState>(
                listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                  () => {},
                  (either) => either.fold((failure) {
                        final String errorText = failure.maybeMap(
                            serverError: (_) => 'Erro interno',
                            invalidPhoneNumber: (_) =>
                                'N�mero de telefone inv�lido',
                            invalidVerificationId: (_) =>
                                'A verifica��o falhou. Tente novamente',
                            applicationError: (_) => 'A aplica��o falhou',
                            orElse: () => '');
                        if (errorText.isEmpty == false) {
                          final snackBar = SnackBar(content: Text(errorText));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }, (_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SmsCodePage()),
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
                        'Qual seu n�mero?',
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
                      'N�s vamos enviar um c�digo para confirmar o seu telefone.',
                      style: TextStyle(height: 2),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    TextFormField(
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.phoneNumberChanged(value)),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .phoneNumber
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  invalidPhoneNumber: (_) => 'N�mero inv�lido',
                                  orElse: () => null),
                              (_) => null),
                      keyboardType: TextInputType.number,
                      inputFormatters: [_maskFormatter],
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 24),
                          hintText: 'seu n�mero de telefone'),
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Visibility(
                        visible: context
                            .read<SignInFormBloc>()
                            .state
                            .showErrorMessages,
                        child: Text(_textStatus)),
                    Visibility(
                        visible:
                            context.read<SignInFormBloc>().state.isSubmitting,
                        child: const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                ColorSet.colorPrimaryGreenButton),
                          ),
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
�             D B 2 1 9 9 ~ 1 2 C 0 �o	   	 � �     a     щ+S�щ+S�щ+S�щ+S� @      1              (D B 2 5 D 1 7 1 2 C 0 E 5 8 B 6 0 0 2 D 8 8 5 B 7 0 8 2 A 7 6 8 9 B 5 C C 5 F 1       �o	   	 h R     a     щ+S�щ+S�щ+S�щ