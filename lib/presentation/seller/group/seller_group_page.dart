import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/group/seller_group_widget.dart';
import 'package:conectacampo/presentation/seller/menu/seller_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SellerGroupPage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const SellerGroupPage(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        settings: settings,
        builder: (context) => Scaffold(
          body: BlocProvider(
            create: (context) => getIt<SellerGroupBloc>(),
            child: BlocConsumer<SellerGroupBloc, SellerGroupState>(
              listener: (context, state) {},
              builder: (context, state) => Padding(
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    children: [
                      // const SizedBox(height: 32),
                      const Text(
                        'Administrar Grupo',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorSet.brown1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ListView.separated(
                          itemBuilder: (context, index) =>
                              SellerGroupWidget(state.groupReservations[index]),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 20),
                          itemCount: state.groupReservations.length)
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
