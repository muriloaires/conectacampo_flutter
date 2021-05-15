import 'package:conectacampo/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';
import 'package:conectacampo/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conectacampo/injection.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(), child: SignUpForm());
  }
}
