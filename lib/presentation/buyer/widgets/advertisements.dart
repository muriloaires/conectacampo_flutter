import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/single_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          final advertisement = widget.advertisements[index].advertisement;
          final uiAdvertisement = widget.advertisements[index];
          String lastProducts = '';
          for (final element in advertisement.products) {
            lastProducts += '${element.name}, ';
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
                      seller: advertisement.seller
                    ),
                    if (widget.isGroup)
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext dialogContext) => Dialog(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.red[800],
                                      child: const Icon(Icons.close,
                                          size: 40, color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Center(
                                      child: Text('Sair do grupo',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child: SizedBox(
                                        width: 180,
                                        child: Flexible(
                                          child: Text(
                                            'Você deseja sair do grupo?',
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                        height: 1, color: ColorSet.grayLine),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(dialogContext),
                                              child: const Text('Voltar',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          ColorSet.grayDark))),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(dialogContext);
                                                context
                                                    .read<AdvertisementsBloc>()
                                                    .add(AdvertisementsEvent
                                                        .leaveGroupTapped(
                                                            advertisement));
                                              },
                                              child: const Text('Sim',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          ColorSet.grayDark))),
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
                const Divider(),
                Visibility(
                    visible: uiAdvertisement.isExpanded,
                    child: SingleAdvertisement(advertisement)),
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
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: widget.advertisements.length);
  }
}

class UIAdvertisement {
  UIAdvertisement(this.isExpanded, this.advertisement);
  bool isExpanded;
  Advertisement advertisement;
}
