import 'package:conectacampo/application/home/home_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/home/ads/ads_feed.dart';
import 'package:conectacampo/presentation/home/widgets/home_bottom_menu.dart';
import 'package:conectacampo/presentation/sign_in/widgets/not_logged_widget.dart';
import 'package:conectacampo/presentation/store/store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => getIt()..add(const HomeEvent.started()),
          )
        ],
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              bottomNavigationBar: const HomeBottomNavigationMenu(),
              body: WillPopScope(
                onWillPop: () async {
                  final key = navigatorKeys[
                      context.read<HomeBloc>().state.currentIndex]!;
                  final popped =
                      await Navigator.maybePop(key.currentState!.context);
                  if (!popped) {
                    if (state.currentIndex != 0) {
                      context
                          .read<HomeBloc>()
                          .add(const HomeEvent.homeTapped());
                      return false;
                    } else {
                      return true;
                    }
                  } else {
                    return false;
                  }
                },
                child: IndexedStack(
                  index: state.currentIndex,
                  children: [
                    AdsFeedPage(navigatorKeys[0]!),
                    const Scaffold(body: Text('Pesquisa')),
                    const Scaffold(body: Text('Reservas')),
                    if (state.isUserLogged)
                      StoreMainPage(navigatorKeys[3]!)
                    else
                      const NotLoggedWidget(),
                    const Scaffold(body: Text('Perfil')),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
