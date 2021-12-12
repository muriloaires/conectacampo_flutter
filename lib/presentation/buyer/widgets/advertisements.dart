import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/adivertisements/single_advertisement/single_advertisement_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/single_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';

import '../../../injection.dart';

class AdvertisementList extends StatefulWidget {
  final bool isSearch;
  final bool isGroup;
  final List<UIAdvertisement> advertisements;

  const AdvertisementList(
      {required this.isSearch,
      required this.advertisements,
      required this.isGroup})
      : super();

  @override
  State<AdvertisementList> createState() => _AdvertisementListState();
}

class _AdvertisementListState extends State<AdvertisementList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final _ad = widget.advertisements[index].advertisement;
          final uiAdvertisement = widget.advertisements[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                uiAdvertisement.isExpanded = !uiAdvertisement.isExpanded;
              });
            },
            child: BlocProvider<SingleAdvertisementBloc>(
              create: (context) =>
                  getIt()..add(SingleAdvertisementEvent.started(_ad)),
              child: BlocBuilder<SingleAdvertisementBloc,
                  SingleAdvertisementState>(
                builder: (context, state) {
                  String lastProducts = '';
                  for (final element in state.lastSellerAd?.products ?? []) {
                    lastProducts += '${element.name}, ';
                  }
                  if (lastProducts.isNotEmpty) {
                    lastProducts =
                        lastProducts.substring(0, lastProducts.length - 2);
                  }
                  return Card(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        Stack(
                          children: [
                            Advertiser(
                                isSearch: widget.isSearch,
                                seller: _ad.seller),
                            if (widget.isGroup)
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext dialogContext) =>
                                          Dialog(
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CircleAvatar(
                                              radius: 35,
                                              backgroundColor: Colors.red[800],
                                              child: const Icon(
                                                Icons.close,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Center(
                                              child: Text('Sair do grupo',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            const SizedBox(height: 10),
                                            const Center(
                                              child: Text(
                                                'Você deseja sair do grupo?',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Container(
                                                height: 1,
                                                color: ColorSet.grayLine),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          dialogContext),
                                                  child: const Text(
                                                    'Voltar',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorSet.grayDark,
                                                    ),
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(
                                                        dialogContext);
                                                    context
                                                        .read<
                                                            AdvertisementsBloc>()
                                                        .add(
                                                          AdvertisementsEvent
                                                              .leaveGroupTapped(
                                                            state.advertisement,
                                                          ),
                                                        );
                                                  },
                                                  child: const Text(
                                                    'Sim',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorSet.grayDark,
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
                                  icon: const Icon(Icons.close),
                                ),
                              )
                            else
                              Container()
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Feira do dia: ${state.advertisement?.deliveryAt.getDateAndMonthName() ?? ''}',
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Divider(),
                        Visibility(
                            visible: uiAdvertisement.isExpanded,
                            child: state.advertisement == null
                                ? Container()
                                : SingleAdvertisement(state.advertisement!)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text.rich(TextSpan(
                                    text: 'Últimos anúncios ',
                                    style: const TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                          text: lastProducts)
                                    ])),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      uiAdvertisement.isExpanded =
                                          !uiAdvertisement.isExpanded;
                                    });
                                  },
                                  icon: Icon(
                                    uiAdvertisement.isExpanded
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                    size: 32,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: widget.advertisements.length);
  }
}

class UIAdvertisement {
  UIAdvertisement(this.isExpanded, this.advertisement);

  bool isExpanded;
  Advertisement advertisement;
}
