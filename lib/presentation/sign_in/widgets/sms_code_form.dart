import 'package:conectacampo/application/auth/sms_code_form/sms_code_form_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/home/home_page.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:conectacampo/presentation/sign_in/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsCodeForm extends StatelessWidget {
  final FocusScopeNode _node = FocusScopeNode();

  final _textSmsCodeController1 = TextEditingController();
  final _textSmsCodeController2 = TextEditingController();
  final _textSmsCodeController3 = TextEditingController();
  final _textSmsCodeController4 = TextEditingController();
  final _textSmsCodeController5 = TextEditingController();
  final _textSmsCodeController6 = TextEditingController();

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
              .read<SmsCodeFormBloc>()
              .add(const SmsCodeFormEvent.verifyCodePressed());
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: FocusScope(
        node: _node,
        child: BlocConsumer<SmsCodeFormBloc, SmsCodeFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () => {},
              (either) => either.fold((failure) {
                failure.maybeMap(
                  userNotFound: (_) async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  orElse: () {},
                );
                final String errorText = failure.maybeMap(
                  serverError: (_) => 'Erro interno',
                  invalidSmsCode: (_) => 'Código inválido. Tente novamente',
                  invalidVerificationId: (_) =>
                      'A verificação falhou. Tente novamente',
                  applicationError: (_) => 'A aplicação falhou',
                  unauthorized: (_) => 'A aplicação falhou',
                  orElse: () => '',
                );
                if (errorText.isEmpty == false) {
                  final snackBar = SnackBar(content: Text(errorText));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }, (_) async {
                final success = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PlacesPage()),
                );

                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              }),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Qual o código?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorSet.colorPrimaryGreen,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Digite o código de 6 digitos que enviamos via SMS para o seu número.',
                    style: TextStyle(height: 2),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController1,
                              (value) {
                            if (value.length == 6) {
                              _textSmsCodeController1.text = value[0];
                              _textSmsCodeController2.text = value[1];
                              _textSmsCodeController3.text = value[2];
                              _textSmsCodeController4.text = value[3];
                              _textSmsCodeController5.text = value[4];
                              _textSmsCodeController6.text = value[5];
                            } else {
                              context.read<SmsCodeFormBloc>().add(
                                    SmsCodeFormEvent.smsCodeChanged(
                                      _textSmsCodeController1.text,
                                    ),
                                  );
                              if (_textSmsCodeController1.text.length == 1) {
                                _node.nextFocus();
                              }
                            }
                            smsCodeChanged(context);
                          }),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController2,
                              (value) {
                            context.read<SmsCodeFormBloc>().add(
                                  SmsCodeFormEvent.smsCodeChanged(
                                    _textSmsCodeController2.text,
                                  ),
                                );
                            if (_textSmsCodeController2.text.length == 1) {
                              _node.nextFocus();
                            } else {
                              _node.previousFocus();
                            }
                            smsCodeChanged(context);
                          }),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController3,
                              (value) {
                            context.read<SmsCodeFormBloc>().add(
                                  SmsCodeFormEvent.smsCodeChanged(
                                    _textSmsCodeController3.text,
                                  ),
                                );
                            if (_textSmsCodeController3.text.length == 1) {
                              _node.nextFocus();
                            } else {
                              _node.previousFocus();
                            }
                            smsCodeChanged(context);
                          }),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController4,
                              (value) {
                            context.read<SmsCodeFormBloc>().add(
                                  SmsCodeFormEvent.smsCodeChanged(
                                    _textSmsCodeController4.text,
                                  ),
                                );
                            if (_textSmsCodeController4.text.length == 1) {
                              _node.nextFocus();
                            } else {
                              _node.previousFocus();
                            }
                            smsCodeChanged(context);
                          }),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController5,
                              (value) {
                            context.read<SmsCodeFormBloc>().add(
                                  SmsCodeFormEvent.smsCodeChanged(
                                    _textSmsCodeController5.text,
                                  ),
                                );
                            if (_textSmsCodeController5.text.length == 1) {
                              _node.nextFocus();
                            } else {
                              _node.previousFocus();
                            }
                            smsCodeChanged(context);
                          }),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: _getSmsCodeTextField(_textSmsCodeController6,
                              (value) {
                            if (value.isEmpty) {
                              _node.previousFocus();
                            }
                            smsCodeChanged(context);
                          }),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Visibility(
                    visible:
                        context.read<SmsCodeFormBloc>().state.showErrorMessages,
                    child: Text(
                      context.read<SmsCodeFormBloc>().state.smsCode.value.fold(
                            (l) => l.maybeMap(
                              invalidCodeLength: (_) => 'Código Inválido',
                              orElse: () => '',
                            ),
                            (_) => '',
                          ),
                    ),
                  ),
                  Visibility(
                    visible: context.read<SmsCodeFormBloc>().state.isSubmitting,
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        ColorSet.colorPrimaryGreenButton,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<SmsCodeFormBloc>()
                          .add(const SmsCodeFormEvent.resendCode());
                    },
                    child: const Text(
                      'Não recebeu o código SMS? Toque aqui para reenviar',
                      style: TextStyle(
                        color: ColorSet.green1,
                      ),
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

  void smsCodeChanged(BuildContext context) {
    final smsCodeValue = _textSmsCodeController1.text +
        _textSmsCodeController2.text +
        _textSmsCodeController3.text +
        _textSmsCodeController4.text +
        _textSmsCodeController5.text +
        _textSmsCodeController6.text;

    context
        .read<SmsCodeFormBloc>()
        .add(SmsCodeFormEvent.smsCodeChanged(smsCodeValue));
  }

  Widget _getSmsCodeTextField(
    TextEditingController controller,
    void Function(String value)? onChanged,
  ) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      onEditingComplete: _node.nextFocus,
      maxLength: 6,
      style: const TextStyle(fontSize: 24, fontFamily: 'Roboto'),
      textAlign: TextAlign.center,
      onChanged: onChanged ??
          (value) {
            if (value.length == 1) {
              _node.nextFocus();
            } else if (value.isEmpty) {
              _node.previousFocus();
            }
          },
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.all(4),
        filled: true,
        fillColor: ColorSet.textFieldGrayBackground,
      ),
    );
  }
}
