import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/buyer/summary/summary_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

import '../buyer_main_page.dart';

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
                appBar: SearchWidget(),
                body: BlocConsumer<SummaryBloc, SummaryState>(
                  listener: (context, state) {

                    if(state.openSearch){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder) => SearchPage()));
                    }

                    if (state.cancellingReservation) {
                      EasyLoading.show(status: 'Cancelando Reserva', dismissOnTap: true);
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
                                    ), (r) {
                              context
                                  .read<GroupBloc>()
                                  .add(const GroupEvent.started());
                              context
                                  .read<ReservationBloc>()
                                  .add(const ReservationEvent.started());

                              EasyLoading.showSuccess(
                                  'Reserva cancelada com sucesso!',
                                  duration: const Duration(seconds: 2));
                            }));
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
                                  return _getNoGroupsAddedWidget(context);
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
            ? GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => SearchPage()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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

  Widget _getNoGroupsAddedWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (builder) => SearchPage()));
      },
      child: Card(
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
      ),
    );
  }
}
