import 'package:conectacampo/application/auth/places_form/bloc/places_form_bloc.dart';
import 'package:conectacampo/presentation/sign_in/widgets/places_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conectacampo/injection.dart';

class PlacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<PlacesFormBloc>()..add(const PlacesFormEvent.started()),
        child: PlacesForm());
  }
}
