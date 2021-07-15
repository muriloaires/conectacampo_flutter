import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_advertisement.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SellerSummary extends StatelessWidget {
  final GlobalKey navigatorKey;

  const SellerSummary(this.navigatorKey);
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
                body: SingleChildScrollView(
                  child: BlocConsumer<SellerSummaryBloc, SellerSummaryState>(
                    listener: (context, state) {},
                    builder: (context, state) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            CustomAppBar(),
                            const SizedBox(
                              height: 32,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                'Administrar Reservas',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.brown1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: SellerReservations(),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                'Meus anúncios',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.brown1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: SellerAdvertisements(),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                'Meugrupo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.brown1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: SellerGroup(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}

class SellerGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (/*context.read<SellerSummaryBloc>().state.reservations.isEmpty*/ true) {
      return Card(
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sem membros',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Flexible(
                      child: Text('Venda produtos para\nadicionar membros',
                          overflow: TextOverflow.ellipsis)),
                ],
              ),
              const SizedBox(
                width: 32,
              ),
              SvgPicture.asset(
                'assets/coolicon.svg',
                color: ColorSet.brown1,
                width: 21,
                height: 21,
              ),
            ],
          ),
        ),
      );
    } else {
//TODO
    }
  }
}

class SellerAdvertisements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Advertisement> sellerAds = context
        .read<SellerSummaryBloc>()
        .state
        .optionOfAdvertisementsFailureOrSuccess
        .fold(() => List.empty(), (a) => a.fold((l) => List.empty(), (r) => r));

    if (sellerAds.isEmpty) {
      return Card(
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sem anúncios',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Anuncie novos produtos!')
                ],
              ),
              const SizedBox(
                width: 32,
              ),
              SvgPicture.asset(
                'assets/coolicon.svg',
                color: ColorSet.brown1,
                width: 21,
                height: 21,
              ),
            ],
          ),
        ),
      );
    } else {
      return SellerAdvertisementList(false,
          sellerAds.map((e) => SellerUIAdvertisement(false, e)).toList());
    }
  }
}

class SellerReservations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (/*context.read<SellerSummaryBloc>().state.reservations.isEmpty*/ true) {
      return Card(
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sem reservas',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Sem reservas no momento')
                ],
              ),
              const SizedBox(
                width: 32,
              ),
              SvgPicture.asset(
                'assets/coolicon.svg',
                color: ColorSet.brown1,
                width: 21,
                height: 21,
              ),
            ],
          ),
        ),
      );
    } else {
//TODO
    }
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: BlocBuilder<SellerSummaryBloc, SellerSummaryState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/map.svg',
                      color: ColorSet.brown1,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              state.optionOfOUser.fold(
                                  () => '',
                                  (a) => a.fold((l) => '',
                                      (r) => r.name.value.getOrElse(() => ''))),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 24,
                          ),
                          CircleAvatar(
                              radius: 16.0,
                              foregroundImage: NetworkImage(state.optionOfOUser
                                  .fold(
                                      () => '',
                                      (a) => a.fold(
                                          (l) => '',
                                          (r) =>
                                              r.thumbAvatar?.value
                                                  .getOrElse(() => '') ??
                                              ''))))
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () async {
                    final success = await Navigator.push<Unit>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlacesPage(),
                        ));
                    if (success != null) {
                      context
                          .read<AdvertisementsBloc>()
                          .add(const AdvertisementsEvent.placeChanged());
                    }
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/location_outline.svg',
                        width: 16,
                        height: 16,
                        color: ColorSet.grayLine,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        child: Text.rich(
                          TextSpan(children: [
                            const TextSpan(
                              text: 'Entrega em: ',
                              style: TextStyle(color: ColorSet.gray2),
                            ),
                            TextSpan(
                              text: state.optionOfOPlace
                                  .fold(() => '', (a) => a.name),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.gray2,
                              ),
                            ),
                          ]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
