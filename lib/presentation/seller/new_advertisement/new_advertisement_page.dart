import 'package:conectacampo/application/seller/new_advertisement/new_advertisement_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/add_product_page.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class NewAdvertisementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<NewAdvertisementBloc>()
          ..add(const NewAdvertisementEvent.started()),
        child: NewAdvertisementForm());
  }
}

class NewAdvertisementForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewAdvertisementBloc, NewAdvertisementState>(
      listener: (context, state) async {
        final bloc = context.read<NewAdvertisementBloc>();
        if (bloc.state.openPlace) {
          final success = await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PlacesPage(),
          ));

          if (success != null) {
            context
                .read<NewAdvertisementBloc>()
                .add(const NewAdvertisementEvent.onPlaceSelected());
          }
        }
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
            backgroundColor: ColorSet.brown1,
            title: const Text(
              'Anunciar',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
        backgroundColor: ColorSet.backgroundInput,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                          onTap: () async {
                            final date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(Duration(days: 60)),
                              builder: (context, child) => Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: ColorSet
                                        .brown1, // header background color
                                    onPrimary:
                                        Colors.black, // header text color
                                    onSurface: Colors.black,
                                    // body text color
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary:
                                          Colors.black, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              ),
                            );
                            context.read<NewAdvertisementBloc>().add(
                                NewAdvertisementEvent.onDateSelected(date));
                          },
                          child: NewAdDate()),
                      const SizedBox(
                        height: 20,
                      ),
                      NewAdPlace(),
                      const SizedBox(
                        height: 20,
                      ),
                      NewAdMeetPlace(),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          if (!context
                              .read<NewAdvertisementBloc>()
                              .state
                              .isBtnContinueEnabled) {
                            return;
                          }
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddProductPage(
                              edited: null,
                            ),
                          ));
                        },
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: context
                                      .read<NewAdvertisementBloc>()
                                      .state
                                      .isBtnContinueEnabled
                                  ? ColorSet.brown1
                                  : ColorSet.grayLine,
                              child: const Center(
                                child: Text(
                                  'Continuar',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewAdCustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        color: ColorSet.brown1,
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class NewAdDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(
        text: context
            .read<NewAdvertisementBloc>()
            .state
            .newAdvertisement
            .date
            ?.getOrCrash());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Qual a data de entrega dos produtos?',
          style: TextStyle(color: ColorSet.brown1, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 5),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today_rounded,
                  size: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: TextField(
                  enabled: false,
                  controller: textController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Escolha a data',
                      labelStyle: TextStyle(color: ColorSet.grayDark)),
                )),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: ColorSet.grayDark,
        )
      ],
    );
  }
}

class NewAdPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(
        text: context
            .read<NewAdvertisementBloc>()
            .state
            .newAdvertisement
            .newAdDeliveryPlace
            ?.name);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Aonde você vai entregar?',
          style: TextStyle(color: ColorSet.brown1, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5, 20.0, 5),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    context
                        .read<NewAdvertisementBloc>()
                        .add(const NewAdvertisementEvent.onPlaceTap());
                  },
                  child: TextField(
                    enabled: false,
                    controller: controller,
                    decoration: const InputDecoration(
                      labelText: 'Local de entrega',
                      labelStyle: TextStyle(color: ColorSet.grayDark),
                      border: InputBorder.none,
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: ColorSet.grayDark,
        ),
      ],
    );
  }
}

class NewAdMeetPlace extends StatelessWidget {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Como te encontrar?',
          style: const TextStyle(
              color: ColorSet.brown1, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 5),
            child: Row(
              children: [
                SvgPicture.asset('assets/id_card.svg'),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: BlocListener<NewAdvertisementBloc,
                        NewAdvertisementState>(
                  listener: (context, state) {
                    if (state.requestDeliveryPlaceFocus) {
                      focusNode.requestFocus();
                    }
                  },
                  child: TextFormField(
                    focusNode: focusNode,
                    onChanged: (value) => context
                        .read<NewAdvertisementBloc>()
                        .add(NewAdvertisementEvent.onDeliveryDescriptionChanged(
                            value)),
                    validator: (_) => context
                        .read<NewAdvertisementBloc>()
                        .state
                        .newAdvertisement
                        .newAdDeliveryDescription
                        .value
                        .fold(
                            (l) => l.maybeMap(
                                  orElse: () => null,
                                  invalidNewAdDeliveryDescription: (_) =>
                                      'Campo Obrigatório',
                                ),
                            (_) => null),
                    onTap: () async {
                      if (!focusNode.hasFocus) {
                        focusNode.nextFocus();
                        final place = await showDialog<String>(
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [DialogPlaceDelivery()],
                          ),
                        );

                        context.read<NewAdvertisementBloc>().add(
                            NewAdvertisementEvent.onDeliveryPlaceSelected(
                                place));
                      }
                    },
                    decoration: InputDecoration(
                        labelText: context
                                .read<NewAdvertisementBloc>()
                                .state
                                .deliveryPlace ??
                            'Escolha um',
                        labelStyle: TextStyle(color: ColorSet.grayDark),
                        border: InputBorder.none),
                  ),
                )),
                MaterialButton(
                  onPressed: () async {
                    final place = await showDialog<String>(
                      context: context,
                      builder: (context) => SimpleDialog(
                        children: [DialogPlaceDelivery()],
                      ),
                    );

                    context.read<NewAdvertisementBloc>().add(
                        NewAdvertisementEvent.onDeliveryPlaceSelected(place));
                  },
                  child: Icon(Icons.arrow_drop_down),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: ColorSet.grayDark,
        ),
      ],
    );
  }
}

class DialogPlaceDelivery extends StatelessWidget {
  final whereList = [
    'Placa do veículo',
    'Box',
    'Pedra',
    'Falar com o vendedor',
  ];

  @override
  Widget build(BuildContext buildContext) {
    return SizedBox(
      height: 220,
      width: 300,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(whereList[index]),
            onTap: () {
              Navigator.of(context).pop(whereList[index]);
            },
          );
        },
      ),
    );
  }
}
