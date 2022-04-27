import 'package:conectacampo/application/auth/phone_number_form/sign_in_form_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/sign_in/widgets/phone_number_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SignInFormBloc>()..add(const SignInFormEvent.started()),
      child: PhoneNumberForm(),
    );
  }
}
