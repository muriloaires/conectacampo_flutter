import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_single_ad.dart';
import 'package:flutter/material.dart';

class SellerAdvertisementList extends StatefulWidget {
  final bool isSearch;
  final List<SellerUIAdvertisement> _advertisements;
  const SellerAdvertisementList(this.isSearch, this._advertisements) : super();
  @override
  State<SellerAdvertisementList> createState() =>
      _SellerAdvertisementListState();
}

class _SellerAdvertisementListState extends State<SellerAdvertisementList> {
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
                        seller: e.advertisement.seller
                      ),
                      Container(
                        height: 1,
                        color: ColorSet.grayLine,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text.rich(
                          TextSpan(
                            text: 'Últimos anúncios ',
                            style: const TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                                text: lastProducts,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
                body: SellerSingleAdvertisement(e.advertisement)))
            .toList());
  }
}

class SellerUIAdvertisement {
  SellerUIAdvertisement(this.isExpanded, this.advertisement);
  bool isExpanded;
  Advertisement advertisement;
}
