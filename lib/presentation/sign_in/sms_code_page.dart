import 'package:conectacampo/application/auth/sms_code_form/sms_code_form_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/sign_in/widgets/sms_code_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SmsCodeFormBloc>(),
      child: SmsCodeForm(),
    );
  }
}
