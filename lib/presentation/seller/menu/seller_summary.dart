import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/seller/adveretisements/seller_advertisements_bloc.dart';
import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/advertisements/advertisement_widget.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/new_advertisement_page.dart';
import 'package:conectacampo/presentation/seller/seller_main_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

class SellerSummary extends StatelessWidget {
  final GlobalKey navigatorKey;

  const SellerSummary(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    setupNotifications(context);
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
                appBar: SellerDefaultAppBar(),
                body: BlocConsumer<SellerSummaryBloc, SellerSummaryState>(
                  listener: (context, state) async {
                    if (state.cancellingReservation) {
                      EasyLoading.show(status: 'Cancelando Reserva');
                    } else {
                      EasyLoading.dismiss();
                    }
                  },
                  builder: (context, state) => RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<SellerSummaryBloc>()
                          .add(const SellerSummaryEvent.started());

                      context
                          .read<ReservationBloc>()
                          .add(const ReservationEvent.started());
                    },
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        const SizedBox(height: 32),
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
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SellerReservations(),
                        ),
                        const SizedBox(height: 32),
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
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SellerAdvertisements(),
                        ),
                        const SizedBox(height: 32),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'Meus grupos',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorSet.brown1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SellerGroup(),
                        ),
                        const SizedBox(height: 32),
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
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }

  void setupNotifications(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      context.read<SellerSummaryBloc>().add(const SellerSummaryEvent.started());
    });
  }
}

class SellerGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final groups = createBuyerReservations(context
        .read<SellerGroupBloc>()
        .state
        .groupReservations
        .fold((l) => [], (r) => r));

    return Card(
      margin: const EdgeInsets.all(0),
      child: MaterialButton(
        onPressed: () {
          context
              .read<SellerMenuBloc>()
              .add(const SellerMenuEvent.groupsTapped());
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groups.isEmpty
                        ? 'Sem membros'
                        : '${groups.length} membro(s)',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                      child: Text(
                          '${groups.isEmpty ? 'Venda produtos para\nadicionar membros' : 'Confira seus membros'} ',
                          overflow: TextOverflow.ellipsis)),
                ],
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
      ),
    );
  }
}

class SellerAdvertisements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SellerAdvertisementsBloc, SellerAdvertisementsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final state2 = context.read<SellerAdvertisementsBloc>().state;
        final widgetToRender = state2.optionOfSellerAdsFailureOrSuccess.fold(
            () {
          return Container();
        },
            (a) => a.fold(
                (l) => const Center(
                      child: Text('Erro ao carregar suas feiras'),
                    ),
                (r) => r.isEmpty
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NewAdvertisementPage()));
                        },
                        child: Card(
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
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            AdvertisementWidget(r[index]),
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        itemCount: r.length)));

        return state.loading
            ? const Center(
                child: CircularProgressIndicator(color: ColorSet.brown1))
            : widgetToRender;
      },
    );
  }
}

class SellerReservations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SellerSummaryBloc, SellerSummaryState>(
      builder: (context, state) {
        if (state.loadingReservations) {
          return const Center(
              child: CircularProgressIndicator(
            color: ColorSet.brown1,
          ));
        }

        final list = context
            .read<SellerSummaryBloc>()
            .state
            .optionOfReservationFailureOrSuccess
            .fold(() => [], (a) => a.fold((l) => [], (r) => r));
        int size = 0;
        if (list.length > 3) {
          size = 3;
        } else {
          size = list.length;
        }
        // if (list.isEmpty) {
        return Card(
          margin: const EdgeInsets.all(0),
          child: MaterialButton(
            onPressed: () {
              context
                  .read<SellerMenuBloc>()
                  .add(const SellerMenuEvent.reservationTapped());
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 32, 0, 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list.isEmpty
                            ? 'Sem reservas'
                            : '${list.length} reserva(s)',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(list.isEmpty
                          ? 'Aguarde o contato de um cliente'
                          : 'Confira suas reservas')
                    ],
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
          ),
        );
        // } else {
        //   return ListView.separated(
        //       shrinkWrap: true,
        //       physics: const ClampingScrollPhysics(),
        //       itemBuilder: (context, index) =>
        //           SellerReservationWidget(list[index].copyWith()),
        //       separatorBuilder: (context, index) => const Divider(),
        //       itemCount: size);
        // }
      },
    );
  }
}
