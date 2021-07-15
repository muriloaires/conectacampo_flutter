import 'package:conectacampo/application/places_form/bloc/places_form_bloc.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class PlacesForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlacesFormBloc, PlacesFormState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    color: ColorSet.colorPrimaryGreenButton,
                  ),
                  onPressed: () {
                    Navigator.pop(context, null);
                  },
                ),
              ),
              floatingActionButton: Visibility(
                visible: state.placeSaved,
                child: FloatingActionButton(
                  backgroundColor: ColorSet.colorPrimaryGreenButton,
                  onPressed: () {
                    Navigator.pop(context, unit);
                  },
                  child: const Icon(Icons.chevron_right),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(32.0),
                child: ListView(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        context.read<PlacesFormBloc>().state.loggedUser.fold(
                            () => '',
                            (a) => a.fold(
                                (l) => '', (r) => r.nickname.getOrCrash())),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.colorPrimaryGreen,
                            fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Qual local você quer retirar os produtos? Fique tranquilo que você pod alterar a qualquer momento!',
                      style: TextStyle(height: 2),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    _getStatePlaceWidget(context, state),
                    const SizedBox(
                      height: 8,
                    ),
                    _getPlaceWidget(context, state)
                  ],
                ),
              ),
            ));
  }

  Widget _getStatePlaceWidget(BuildContext context, PlacesFormState state) {
    if (state.isLoadingStatePlaces) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor:
              AlwaysStoppedAnimation<Color>(ColorSet.colorPrimaryGreenButton),
        ),
      );
    } else if (state.loadStatePlacesFinish) {
      final items = state.states
          .fold(() => List<StatePlace>.empty(),
              (a) => a.fold((l) => List<StatePlace>.empty(), (r) => r))
          .toList();

      return Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: ColorSet.backgroundInput,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                )),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/map.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: DropdownButton<StatePlace>(
                    value: state.selectedState,
                    items: items.map<DropdownMenuItem<StatePlace>>((e) {
                      return DropdownMenuItem<StatePlace>(
                          value: e,
                          child: Text(
                            e.getOrCrash(),
                          ));
                    }).toList(),
                    underline: Container(height: 1, color: Colors.transparent),
                    onChanged: (newValue) {
                      context
                          .read<PlacesFormBloc>()
                          .add(PlacesFormEvent.stateSelected(newValue));
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(
                      color: ColorSet.colorPrimaryGreen,
                      fontSize: 20,
                    ),
                    isExpanded: true,
                    hint: const Text('Estado'),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: ColorSet.grayLine),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: ColorSet.backgroundInput,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                )),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/map.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: DropdownButton<StatePlace>(
                    value: state.selectedState,
                    items: [],
                    underline: Container(height: 1, color: Colors.transparent),
                    onChanged: (newValue) {
                      context
                          .read<PlacesFormBloc>()
                          .add(PlacesFormEvent.stateSelected(newValue));
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(
                      color: ColorSet.colorPrimaryGreen,
                      fontSize: 20,
                    ),
                    isExpanded: true,
                    hint: const Text('Estado'),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: ColorSet.grayLine),
        ],
      );
    }
  }

  Widget _getPlaceWidget(BuildContext context, PlacesFormState state) {
    if (state.isLoadingPlaces) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor:
              AlwaysStoppedAnimation<Color>(ColorSet.colorPrimaryGreenButton),
        ),
      );
    } else if (state.loadPlacesFinish) {
      final items = state.places
          .fold(() => List<Place>.empty(),
              (a) => a.fold((l) => List<Place>.empty(), (r) => r))
          .toList();

      return Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: ColorSet.backgroundInput,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                )),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/location_outline.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: DropdownButton<Place>(
                    value: state.placeSelected,
                    items: items.map<DropdownMenuItem<Place>>((e) {
                      return DropdownMenuItem<Place>(
                          value: e,
                          child: Text(
                            e.name,
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      context
                          .read<PlacesFormBloc>()
                          .add(PlacesFormEvent.placeSelected(newValue));
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(
                      color: ColorSet.colorPrimaryGreen,
                      fontSize: 20,
                    ),
                    isExpanded: true,
                    hint: const Text('Ceasa'),
                    underline: Container(height: 1, color: Colors.transparent),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: ColorSet.grayLine),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            color: ColorSet.backgroundInput,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/location_outline.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: DropdownButton<Place>(
                    value: state.placeSelected,
                    items: [],
                    underline: Container(height: 1, color: Colors.transparent),
                    onChanged: (newValue) {
                      context
                          .read<PlacesFormBloc>()
                          .add(PlacesFormEvent.placeSelected(newValue));
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(
                      color: ColorSet.colorPrimaryGreen,
                      fontSize: 20,
                    ),
                    isExpanded: true,
                    hint: const Text('Ceasa'),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: ColorSet.grayLine),
        ],
      );
    }
  }
}
