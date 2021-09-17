import 'package:conectacampo/application/buyer/adivertisements/advertiser/advertiser_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Advertiser extends StatelessWidget {
  final bool isSearch;
  final User seller;

  const Advertiser({required this.isSearch, required this.seller}) : super();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<AdvertiserBloc>()..add(AdvertiserEvent.started(seller)),
      child: BlocBuilder<AdvertiserBloc, AdvertiserState>(
          builder: (context, state) {
        String lastProducts = '';
        if (state.seller.lastAdvertisement != null) {
          for (final element in state.seller.lastAdvertisement!.products) {
            lastProducts += '${element.name}, ';
          }
        }
        try {
          lastProducts = lastProducts.substring(0, lastProducts.length - 2);
        } catch (a) {}

        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30.0,
                      backgroundColor: ColorSet.green1,
                      foregroundImage: NetworkImage(
                          state.seller.thumbAvatar?.getOrCrash() ?? '')),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        Text(
                          state.seller.name.getOrCrash(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Visibility(
                          visible: isSearch &&
                              state.seller.lastAdvertisement != null,
                          child: Text.rich(TextSpan(children: [
                            const TextSpan(
                              text: 'Último anúncio: ',
                              style: TextStyle(
                                color: ColorSet.gray2,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: lastProducts,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ])),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      }),
    );
  }
}
