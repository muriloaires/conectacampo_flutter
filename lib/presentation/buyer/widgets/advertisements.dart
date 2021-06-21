import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/single_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class AdvertisementList extends StatefulWidget {
  final bool isSearch;
  final List<UIAdvertisement> _advertisements;
  const AdvertisementList(this.isSearch, this._advertisements) : super();
  @override
  State<AdvertisementList> createState() => _AdvertisementListState();
}

class _AdvertisementListState extends State<AdvertisementList> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            widget._advertisements[index].isExpanded = !isExpanded;
          });
        },
        children: widget._advertisements
            .map((e) => ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: e.isExpanded,
                headerBuilder: (context, isExpanded) {
                  String lastProducts = '';
                  for (var element in e.advertisement.products) {
                    lastProducts += '${element.name}, ';
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Advertiser(
                          isSearch: widget.isSearch,
                          user: e.advertisement.seller,
                          lastAdvertisements: e.advertisement.products),
                      Container(
                        height: 1,
                        color: ColorSet.grayLine,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
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
                      )
                    ],
                  );
                },
                body: SingleAdvertisement(e.advertisement)))
            .toList());
  }
}

class UIAdvertisement {
  UIAdvertisement(this.isExpanded, this.advertisement);
  bool isExpanded;
  Advertisement advertisement;
}
