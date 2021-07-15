import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/profile/profile_page.dart';
import 'package:conectacampo/presentation/seller/menu/seller_summary.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      ],
      child: BlocConsumer<SellerMenuBloc, SellerMenuState>(
        listener: (context, state) {
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
          return Scaffold(
            backgroundColor: ColorSet.textFieldGrayBackground,
            bottomNavigationBar: SellerBottomMenu(),
            body: WillPopScope(
              onWillPop: () async {
                return !await Navigator.maybePop(
                    navigatorKeys[state.currentIndex]!.currentState!.context);
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
                    isBuyer: false,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
