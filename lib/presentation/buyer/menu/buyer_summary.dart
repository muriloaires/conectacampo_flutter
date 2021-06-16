import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
                body: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        children: [
                          _getSearchWidget(context),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Reservation(ReservationStatus.confirmed),
                                Reservation(ReservationStatus.confirmed)
                              ],
                            ),
                          ),
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
                            child: _getNoItemsAddedWidget(),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: _getNoGroupsAddedWidget(),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: AdvertisementList(false),
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
                                  children: [
                                    const Text(
                                      'Dúvidas sobre preço?',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Text(
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
                    )
                  ],
                ),
              );
            });
      },
    );
  }

  Card _getNoItemsAddedWidget() {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sem itens na sua feira!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text('Fazer novo pedido')
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
    );
  }

  Card _getNoGroupsAddedWidget() {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sem grupos',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text('Procurar grupo de produtores')
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
    );
  }

  Card _getSearchWidget(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                // context
                //     .read<BuyerMenuBloc>()
                //     .add(const BuyerMenuEvent.searchTapped());
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => SearchPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: ColorSet.grayRoundedBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'O que você quer comprar hoje?',
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                        ),
                        const Icon(
                          Icons.search,
                          color: ColorSet.colorPrimaryGreen,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/location_outline.svg',
                  width: 16,
                  height: 16,
                  color: ColorSet.grayLine,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Produtos e Retirada em:',
                    style: TextStyle(color: ColorSet.gray2),
                  ),
                  TextSpan(
                    text: ' Ceasa Goiânia',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: ColorSet.gray2),
                  ),
                ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
