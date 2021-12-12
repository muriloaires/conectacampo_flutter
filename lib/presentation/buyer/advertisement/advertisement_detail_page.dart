import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/application/buyer/adivertisements/advertisement_deital/ad_detail_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/advertisement/ad_product_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';

class AdvertisementDetailPage extends StatelessWidget {
  const AdvertisementDetailPage(this._advertisementId);

  final int _advertisementId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdDetailBloc>(
      create: (context) =>
          getIt()..add(AdDetailEvent.started(_advertisementId)),
      child: BlocConsumer<AdDetailBloc, AdDetailState>(
        listener: (context, state) {
          if (state.loadingAd) {
            EasyLoading.show(status: 'Carregando anúncio', dismissOnTap: true);
          } else {
            EasyLoading.dismiss();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Feira do dia ${state.advertisement?.deliveryAt.getDateAndMonthName() ?? '...'}'),
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  const Text(
                    'Mais produtos deste vendedor',
                    style: TextStyle(
                      color: ColorSet.green1,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        AdvertisementHeaderWidget(state.advertisement),
                        const Divider(),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Todos os produtos deste vendedor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, index) {
                              if (state.advertisement == null) {
                                return Container();
                              }
                              return AdProductWidget(
                                  product:
                                      state.advertisement!.products[index]);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 10,
                                ),
                            itemCount:
                                state.advertisement?.products.length ?? 0)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AdvertisementHeaderWidget extends StatelessWidget {
  const AdvertisementHeaderWidget(this._advertisement);

  final Advertisement? _advertisement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 30.0,
                  backgroundColor: ColorSet.green1,
                  foregroundImage: CachedNetworkImageProvider(
                      _advertisement?.seller.thumbAvatar?.getOrCrash() ?? '')),
              const SizedBox(width: 8),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    Text(
                      _advertisement?.seller.nickname ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text.rich(TextSpan(
                        text: _advertisement?.meetingType ?? '',
                        children: [
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: _advertisement?.meetingTypeDescription ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
