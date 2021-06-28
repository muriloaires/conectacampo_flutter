import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
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
            create: (BuildContext context) => getIt()),
      ],
      child: BlocConsumer<SellerMenuBloc, SellerMenuState>(
        listener: (context, state) {},
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
                  Scaffold(body: Text('Perfil'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
