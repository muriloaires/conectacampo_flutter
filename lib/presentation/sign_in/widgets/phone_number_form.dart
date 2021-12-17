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
      floatingActionButton: BlocBuilder<SignInFormBloc, SignInFormState>(
          builder: (context, state) {
        return Visibility(
          visible: context.read<SignInFormBloc>().state.phoneNumber.isValid(),
          child: FloatingActionButton(
            backgroundColor: ColorSet.colorPrimaryGreenButton,
            onPressed: () {
              context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.verifyPhoneNumberPressed());
            },
            child: const Icon(Icons.chevron_right),
          ),
        );
      }),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
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
                        unknownError: (error) =>
                            error.exception.code +
                            (error.exception.message ?? ''),
                        orElse: () => 'Algum error');
                    if (errorText.isEmpty == false) {
                      final snackBar = SnackBar(content: Text(errorText));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }, (_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmsCodePage()),
                    );
                  }));
        }, builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Qual seu número?',
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
                  'Nós vamos enviar um código para confirmar o seu telefone.',
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
                              invalidPhoneNumber: (_) => 'Número inválido',
                              orElse: () => null),
                          (_) => null),
                  keyboardType: TextInputType.number,
                  inputFormatters: [_maskFormatter],
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 24),
                      hintText: 'seu número de telefone'),
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 8,
                ),
                Visibility(
                    visible:
                        context.read<SignInFormBloc>().state.showErrorMessages,
                    child: Text(_textStatus)),
                Visibility(
                    visible: context.read<SignInFormBloc>().state.isSubmitting,
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
      ),
    );
  }
}
