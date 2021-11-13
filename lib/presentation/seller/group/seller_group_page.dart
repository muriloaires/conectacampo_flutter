import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/group/seller_group_widget.dart';
import 'package:conectacampo/presentation/seller/seller_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
              listener: (context, state) {
                if (state.loading) {
                  EasyLoading.show(
                      status: 'Por favor aguarde', dismissOnTap: true);
                } else {
                  EasyLoading.dismiss();
                }

                state.groupRemoval?.fold(
                    (l) => EasyLoading.showError('Algo errado ocorreu.'),
                    (r) => EasyLoading.showSuccess(
                        'Usuário removido com sucesso!'));
              },
              builder: (context, state) => state.groupReservations.fold(
                  (l) => const Center(child: Text('Erro ao obter grupos')),
                  (r) {
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
                                      Stack(children: [
                                        SellerGroupWidget(buyerGroup[index]),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                showDialog<String>(
                                                  context: context,
                                                  builder: (BuildContext
                                                          dialogContext) =>
                                                      Dialog(
                                                    child: ListView(
                                                      shrinkWrap: true,
                                                      children: [
                                                        const Divider(),
                                                        CircleAvatar(
                                                          radius: 35,
                                                          backgroundColor:
                                                              Colors.amber[400],
                                                          child: const Text(
                                                            '!',
                                                            style: TextStyle(
                                                                fontSize: 40,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        const Center(
                                                          child: Text(
                                                              'Deseja excluir?',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ),
                                                        const Divider(
                                                            height: 8),
                                                        const Center(
                                                          child: SizedBox(
                                                            width: 180,
                                                            child: Text(
                                                              'Tem certeza que você deseja excluir de seu grupo?',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                        ),
                                                        const Divider(
                                                            height: 8),
                                                        Container(
                                                            height: 1,
                                                            color: ColorSet
                                                                .grayLine),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              child: const Text(
                                                                'Voltar',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: ColorSet
                                                                      .grayDark,
                                                                ),
                                                              ),
                                                            ),
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    dialogContext);
                                                                context
                                                                    .read<
                                                                        SellerGroupBloc>()
                                                                    .add(
                                                                      SellerGroupEvent
                                                                          .onBtnDeleteTap(
                                                                        buyerGroup[
                                                                            index],
                                                                      ),
                                                                    );
                                                              },
                                                              child: const Text(
                                                                'Sim',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: ColorSet
                                                                      .grayDark,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: const Icon(Icons.cancel),
                                            ),
                                          ),
                                        ),
                                      ]),
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
