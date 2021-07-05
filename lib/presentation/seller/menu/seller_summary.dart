import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                body: SingleChildScrollView(
                  child: BlocConsumer<SellerSummaryBloc, SellerSummaryState>(
                    listener: (context, state) {},
                    builder: (context, state) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            CustomAppBar(),
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
                                'Meugrupo',
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
    if (/*context.read<SellerSummaryBloc>().state.reservations.isEmpty*/ true) {
      return Card(
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sem membros',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Flexible(
                      child: Text('Venda produtos para\nadicionar membros',
                          overflow: TextOverflow.ellipsis)),
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
//TODO
    }
  }
}

class SellerAdvertisements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (/*context.read<SellerSummaryBloc>().state.reservations.isEmpty*/ true) {
      return Card(
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sem anúncios',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text('Anuncie novos produtos!')
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
//TODO
    }
  }
}

class SellerReservations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (/*context.read<SellerSummaryBloc>().state.reservations.isEmpty*/ true) {
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
                    'Sem reservas',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text('Sem reservas no momento')
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
//TODO
    }
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                SvgPicture.asset(
                  'assets/map.svg',
                  color: ColorSet.brown1,
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Murilo Aires',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 24,
                      ),
                      Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://images.uncyc.org/pt/9/91/Frank_Tenpenny.jpg'))))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () async {
                final success = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlacesPage(),
                    ));
                // context
                //     .read<AdvertisementsBloc>()
                //     .add(const AdvertisementsEvent.placeChanged());
              },
              child: Row(
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
                  Flexible(
                    child: Text.rich(
                      TextSpan(children: [
                        const TextSpan(
                          text: 'Produtos e Retirada em: ',
                          style: TextStyle(color: ColorSet.gray2),
                        ),
                        TextSpan(
                          text:
                              /*'${context.read<AdvertisementsBloc>().state.fromPlace?.state} ${context.read<AdvertisementsBloc>().state.fromPlace?.name}'*/ '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.gray2,
                          ),
                        ),
                      ]),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
