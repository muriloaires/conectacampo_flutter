import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/group/seller_group_widget.dart';
import 'package:conectacampo/presentation/seller/seller_main_page.dart';
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
          appBar: SellerDefaultAppBar(),
          body: BlocProvider(
            create: (context) =>
                getIt<SellerGroupBloc>()..add(const SellerGroupEvent.started()),
            child: BlocConsumer<SellerGroupBloc, SellerGroupState>(
              listener: (context, state) {},
              builder: (context, state) =>
                  state.groupReservations.fold((l) => const Center(child: Text('Erro ao obter grupos')), (r) {
                final buyerGroup = createBuyerReservations(r);
                return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
                    child: r.isEmpty
                            ? const Center(child: Text('Você não tem grupos'))
                            : ListView(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          children: [
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
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    SellerGroupWidget(buyerGroup[index]),
                                separatorBuilder: (context, index) =>
                                const SizedBox(height: 20),
                                itemCount: buyerGroup.length)
                          ],
                        ));
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
