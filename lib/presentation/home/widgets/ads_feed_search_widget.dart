import 'package:conectacampo/application/buyer/search/search_form_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdsFeedSearchWidget extends StatelessWidget {
  const AdsFeedSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: ColorSet.grayRoundedBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: TextField(
          autofocus: false,
          onChanged: (newValue) {
            // context
            //     .read<SearchFormBloc>()
            //     .add(SearchFormEvent.nameChanged(newValue));
          },
          decoration: const InputDecoration(
            hintText: 'Pesquise por loja ou produto',
            border: InputBorder.none,
          ),
        ));
  }
}
