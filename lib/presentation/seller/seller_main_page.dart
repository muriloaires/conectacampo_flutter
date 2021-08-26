import 'dart:math';

import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/profile/profile_page.dart';
import 'package:conectacampo/presentation/seller/menu/seller_summary.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_bottom_menu.dart';
import 'package:conectacampo/presentation/seller/reservation/edit_reservation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'new_advertisement/new_advertisement_page.dart';

class SellerMainPage extends StatelessWidget {
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SellerMenuBloc>(create: (BuildContext context) => getIt()),
        BlocProvider<SellerSummaryBloc>(
            create: (BuildContext context) =>
                getIt()..add(const SellerSummaryEvent.started())),
        BlocProvider<ReservationBloc>(
            create: (context) => getIt()..add(const ReservationEvent.started()))
      ],
      child: BlocConsumer<SellerMenuBloc, SellerMenuState>(
        listener: (context, state) async {
          if (state.openEditReservation) {
            state.optionOfResevationToEdit.fold(() => null, (a) async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditReservationPage(a),
              ));
              context
                  .read<SellerSummaryBloc>()
                  .add(const SellerSummaryEvent.started());

              context
                  .read<SellerMenuBloc>()
                  .add(const SellerMenuEvent.editingEnd());
            });
          }

          if (state.navToLogin) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/splash', (route) => false);
          }

          if (state.navToBuyer) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => BuyerMainPage(),
                ),
                (route) => false);
          }

          if (state.reTapIndex != -1) {
            navigatorKeys[state.reTapIndex]!
                .currentState!
                .popUntil((r) => r.isFirst);
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                backgroundColor: ColorSet.textFieldGrayBackground,
                bottomNavigationBar: SellerBottomMenu(),
                body: WillPopScope(
                  onWillPop: () async {
                    return !await Navigator.maybePop(
                        navigatorKeys[state.currentIndex]!
                            .currentState!
                            .context);
                  },
                  child: IndexedStack(
                    index: context.read<SellerMenuBloc>().state.currentIndex,
                    children: [
                      SellerSummary(navigatorKeys[0]!),
                      Scaffold(body: Text('Grupos')),
                      Scaffold(body: Text('Reservas')),
                      Scaffold(body: Text('Reservas')),
                      ProfilePage(
                        navigatorKey: navigatorKeys[1]!,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 68,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 68.0,
                          height: 68.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorSet.brown1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset('assets/white_icon.svg'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
