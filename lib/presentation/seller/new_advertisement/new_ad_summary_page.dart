import 'dart:io';

import 'package:conectacampo/application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAdSummaryPage extends StatelessWidget {
  final NewAdvertisement newAdvertisement;

  const NewAdSummaryPage(this.newAdvertisement);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewAdSummaryBloc>()
        ..add(NewAdSummaryEvent.started(newAdvertisement: newAdvertisement)),
      child: BlocConsumer<NewAdSummaryBloc, NewAdSummaryState>(
          listener: (context, state) {},
          builder: (context, state) => Scaffold(
                appBar: AppBar(
                    backgroundColor: ColorSet.brown1,
                    title: const Text(
                      'Anunciar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                body: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Escolha as fotos dos seus produtos',
                            style: TextStyle(
                                color: ColorSet.brown1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListView.separated(
                            itemBuilder: (context, index) =>
                                NewAdSummaryProduct(
                                  product:
                                      state.newAdvertisement.products[index],
                                  index: index,
                                ),
                            separatorBuilder: (context, index) => Container(
                                  height: 1,
                                  color: ColorSet.grayLine,
                                ),
                            itemCount: state.newAdvertisement.products.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics()),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                            'Entrega dia - ${state.newAdvertisement.date.getOrCrash()}')
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}

class NewAdSummaryProduct extends StatelessWidget {
  final NewAdProduct product;
  final int index;

  const NewAdSummaryProduct({required this.product, required this.index});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAdSummaryBloc, NewAdSummaryState>(
      builder: (context, state) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  context
                      .read<NewAdSummaryBloc>()
                      .add(NewAdSummaryEvent.editTap(index: index));
                },
                child: const Text(
                  'Alterar',
                  style: TextStyle(
                      color: ColorSet.gray10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      color: ColorSet.backgroundInput,
                      width: 75,
                      height: 75,
                      child: product.picturesPaths.isEmpty
                          ? Image.asset('assets/placeholder.png')
                          : Image.file(
                              File(product.picturesPaths.first),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Produto'),
                        const SizedBox(height: 4),
                        Text(
                          product.newAdProduct?.name ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 4),
                        Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(
                                product.newAdProductKind?.value
                                        .getOrElse(() => '') ??
                                    '',
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.grayDark),
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(
                                  product.newAdProductRating?.value
                                          .getOrElse(() => '') ??
                                      '',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.grayDark)),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(
                                  product.newAdProductUnitMeasure?.name ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.grayDark)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
