import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/buyer/summary/summary_bloc.dart';

import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

class BuyerSummary extends StatelessWidget {
  final GlobalKey navigatorKey;

  const BuyerSummary(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return Scaffold(
                body: BlocConsumer<SummaryBloc, SummaryState>(
                  listener: (context, state) {
                    if (state.cancellingReservation) {
                      EasyLoading.show(status: 'Cancelando Reserva');
                    } else {
                      EasyLoading.dismiss();
                    }

                    state.optionOfReservationCancelFailureOrSuccess.fold(
                        () => null,
                        (a) => a.fold(
                            (l) => l.maybeMap(
                                  orElse: () {},
                                  serverError: (s) {
                                    EasyLoading.showError(
                                        'Algo errado ocorreu');
                                  },
                                ),
                            (r) => EasyLoading.showSuccess(
                                'Reserva cancelada com sucesso!',
                                duration: const Duration(seconds: 2))));
                  },
                  builder: (context, state) => RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<AdvertisementsBloc>()
                          .add(const AdvertisementsEvent.started());

                      context
                          .read<ReservationBloc>()
                          .add(const ReservationEvent.started());

                      context.read<GroupBloc>().add(const GroupEvent.started());
                    },
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        _getSearchWidget(context),
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
                              color: ColorSet.greenTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: _getReservations(),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'Meus grupos',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorSet.greenTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        BlocBuilder<AdvertisementsBloc, AdvertisementsState>(
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: state.groupsAdsFailureOrSuccess
                                  .fold((l) => const Text('Erro'), (r) {
                                if (r.isEmpty) {
                                  return _getNoGroupsAddedWidget();
                                } else {
                                  return AdvertisementList(
                                      isSearch: false,
                                      isGroup: true,
                                      advertisements: (r.length > 3
                                              ? r.sublist(0, 2)
                                              : r)
                                          .map((e) => UIAdvertisement(true, e))
                                          .toList());
                                }
                              }),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'Últimos anúncios',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorSet.greenTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        BlocBuilder<AdvertisementsBloc, AdvertisementsState>(
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: state.adsFailureOrSuccess.fold(
                                  (l) => const Text('Erro'),
                                  (r) => AdvertisementList(
                                      isSearch: false,
                                      isGroup: false,
                                      advertisements: r
                                          .map((e) => UIAdvertisement(false, e))
                                          .toList()))

                              /**/
                              ,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    ColorSet.greenRightGradient,
                                    ColorSet.greenLeftGradient,
                                  ],
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 16, 20, 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Dúvidas sobre preço?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Acesse o PROHORT ou o SIMA!',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }

  Widget _getReservations() {
    return BlocConsumer<ReservationBloc, ReservationState>(
      listener: (context, state) {},
      builder: (context, state) {
        final List<Reservation> list = state
            .optionOfReservationListFailureOrSuccess
            .fold(() => [], (a) => a.fold((l) => [], (r) => r));
        int size = 0;
        if (list.length > 3) {
          size = 3;
        } else {
          size = list.length;
        }
        final finalWidget = list.isEmpty
            ? Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sem itens na sua feira!',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Fazer novo pedido')
                        ],
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      SvgPicture.asset(
                        'assets/coolicon.svg',
                        width: 21,
                        height: 21,
                      ),
                    ],
                  ),
                ),
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => ReservationWidget(list[index]),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: size);
        return finalWidget;
      },
    );
  }

  Card _getNoGroupsAddedWidget() {
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
                  'Sem grupos',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Procurar grupo de produtores')
              ],
            ),
            const SizedBox(
              width: 32,
            ),
            SvgPicture.asset(
              'assets/coolicon.svg',
              width: 21,
              height: 21,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSearchWidget(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                // context
                //     .read<BuyerMenuBloc>()
                //     .add(const BuyerMenuEvent.searchTapped());
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => SearchPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: ColorSet.grayRoundedBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'O que você quer comprar hoje?',
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                        ),
                        Icon(
                          Icons.search,
                          color: ColorSet.colorPrimaryGreen,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () async {
                final success = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlacesPage(),
                    ));
                context
                    .read<AdvertisementsBloc>()
                    .add(const AdvertisementsEvent.placeChanged());
                context
                    .read<SummaryBloc>()
                    .add(const SummaryEvent.onPlaceChanged());
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
                          text: 'Produtos e Retirada em: ',
                          style: TextStyle(color: ColorSet.gray2, fontSize: 13),
                        ),
                        TextSpan(
                          text: context
                              .read<SummaryBloc>()
                              .state
                              .selectedPlace
                              .name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorSet.gray2,
                              fontSize: 13),
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
      ),
    );
  }
}
