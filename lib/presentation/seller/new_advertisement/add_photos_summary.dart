import 'dart:io';

import 'package:conectacampo/application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/add_photo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AddPhotosSummaryPage extends StatelessWidget {
  final List<NewAdProduct> products;

  const AddPhotosSummaryPage({required this.products});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<AddPhotosSummaryBloc>()
          ..add(AddPhotosSummaryEvent.started(products)),
        child: AddPhotosSummaryForm());
  }
}

class AddPhotosSummaryForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPhotosSummaryBloc, AddPhotosSummaryState>(
        listener: (context, state) async {
          if (state.openPhotoSelection) {
            final result = await Navigator.of(context)
                .push<List<String>?>(MaterialPageRoute(
              builder: (context) =>
                  AddPhotoPage(state.products[state.openPhotoIndex]),
            ));

            if (result != null) {
              context.read<AddPhotosSummaryBloc>().add(
                  AddPhotosSummaryEvent.photosSelected(
                      state.openPhotoIndex, result));
            }
          }
        },
        builder: (context, state) => Scaffold(
            backgroundColor: ColorSet.backgroundInput,
            appBar: AppBar(
                backgroundColor: ColorSet.brown1,
                title: const Text(
                  'Anunciar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Escolha as fotos dos seus produtos',
                              style: TextStyle(
                                  color: ColorSet.brown1,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ListView.separated(
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                      onTap: () async {
                                        context
                                            .read<AddPhotosSummaryBloc>()
                                            .add(AddPhotosSummaryEvent
                                                .itemSelected(index));
                                      },
                                      child: NewProduct(
                                          product: state.products[index]),
                                    ),
                                separatorBuilder: (context, index) => Container(
                                      height: 1,
                                      color: ColorSet.grayLine,
                                    ),
                                itemCount: state.products.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics()),
                            const SizedBox(
                              height: 40,
                            ),
                            MaterialButton(
                                onPressed: () {},
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: state.showBtnProceed
                                          ? ColorSet.brown1
                                          : ColorSet.gray10,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Center(
                                    child: Text(
                                      'Continuar*',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ))))));
  }
}

class NewProduct extends StatelessWidget {
  final NewAdProduct product;

  const NewProduct({required this.product});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPhotosSummaryBloc, AddPhotosSummaryState>(
      builder: (context, state) {
        return Container(
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
              SizedBox(
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
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorSet.gray10,
                          child: Text(
                            product.newAdProductKind?.value
                                    .getOrElse(() => '') ??
                                '',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorSet.grayDark),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorSet.gray10,
                          child: Text(
                              product.newAdProductRating?.value
                                      .getOrElse(() => '') ??
                                  '',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.grayDark)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorSet.gray10,
                          child: Text(
                              product.newAdProductUnitMeasure?.name ?? '',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.grayDark)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Icon(Icons.chevron_right)
            ],
          ),
        );
      },
    );
  }
}
