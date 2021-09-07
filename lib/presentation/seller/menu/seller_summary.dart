import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_advertisement.dart';
import 'package:conectacampo/presentation/seller/reservation/seller_reservation_widget.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
                            'Meus grupos',
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
                    '${groups.isEmpty ? 'Sem membros' : '${groups.length}'} membro(s)',
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
