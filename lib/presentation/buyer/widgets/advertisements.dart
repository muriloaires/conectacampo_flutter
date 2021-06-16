import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/single_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvertisementList extends StatefulWidget {
  final bool isSearch;

  const AdvertisementList(this.isSearch) : super();
  @override
  State<AdvertisementList> createState() => _AdvertisementListState();
}

class _AdvertisementListState extends State<AdvertisementList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdivertisementsBloc, AdivertisementsState>(
      builder: (context, state) {
        return ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                state.ads[index].isExpanded = !isExpanded;
              });
            },
            children: context
                .read<AdivertisementsBloc>()
                .state
                .ads
                .map((e) => ExpansionPanel(
                    canTapOnHeader: true,
                    isExpanded: e.isExpanded,
                    headerBuilder: (context, isExpanded) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Advertiser(
                            isSearch: widget.isSearch,
                          ),
                          Container(
                            height: 1,
                            color: ColorSet.grayLine,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4),
                            child: Text.rich(TextSpan(
                                text: 'Últimos anúncios ',
                                style: TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                      text: 'Tomate e Pimentão')
                                ])),
                          )
                        ],
                      );
                    },
                    body: SingleAdvertisement()))
                .toList());
      },
    );
  }
}

class Advertising {
  Advertising(this.isExpanded);
  bool isExpanded;
}
