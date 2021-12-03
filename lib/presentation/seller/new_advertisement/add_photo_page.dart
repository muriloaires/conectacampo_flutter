import 'dart:io';

import 'package:conectacampo/application/seller/new_advertisement/add_photo/add_photo_bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddPhotoPage extends StatelessWidget {
  final NewAdProduct product;

  const AddPhotoPage(this.product);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AddPhotoBloc>()..add(AddPhotoEvent.started(product)),
      child: AddPhotoForm(),
    );
  }
}

class AddPhotoForm extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPhotoBloc, AddPhotoState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
              backgroundColor: ColorSet.backgroundInput,
              appBar: AppBar(
                  backgroundColor: ColorSet.brown1,
                  title: const Text('Anunciar',
                      style: TextStyle(color: Colors.white))),
              body: Container(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    const Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0)),
                    const Text('Resumo do anúncio',
                        style: TextStyle(
                            color: ColorSet.brown1,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    if (state.photos.isEmpty)
                      _nonePhotoSelected()
                    else
                      _somePhotoSelected(),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ));
  }

  Widget _somePhotoSelected() => BlocBuilder<AddPhotoBloc, AddPhotoState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(state.product?.newAdProduct?.name ?? '',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: ColorSet.grayRoundedBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.0),
                        )),
                    child: Text(
                      state.product?.newAdProductKind?.getOrCrash() ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorSet.gray2),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: ColorSet.grayRoundedBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.0),
                        )),
                    child: Text(
                      state.product?.newAdProductUnitMeasure?.name ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorSet.gray2),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image.file(
                          File(state.photos[index]),
                          fit: BoxFit.cover,
                          width: 233,
                          height: 160,
                        ),
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: state.photos.length),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                    onPressed: () async {
                      final XFile? pickedFile = await _picker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 70,
                        maxWidth: 1200,
                        maxHeight: 1200,
                      );

                      if (pickedFile != null) {
                        final legth = await pickedFile.length();

                        context
                            .read<AddPhotoBloc>()
                            .add(AddPhotoEvent.photoSelected(pickedFile.path));
                      }
                    },
                    child: const Text(
                      'Escolher outra foto',
                      style: TextStyle(
                        color: ColorSet.brown1,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () async {
                    final XFile? pickedFile = await _picker.pickImage(
                      source: ImageSource.camera,
                      imageQuality: 70,
                      maxWidth: 1200,
                      maxHeight: 1200,
                    );
                    if (pickedFile != null) {
                      context
                          .read<AddPhotoBloc>()
                          .add(AddPhotoEvent.photoSelected(pickedFile.path));
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Tirar uma foto',
                      style: TextStyle(
                          color: ColorSet.brown1,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )),
              const SizedBox(height: 10),
              MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop(state.photos);
                  },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        color: ColorSet.brown1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      );

  Widget _nonePhotoSelected() => BlocBuilder<AddPhotoBloc, AddPhotoState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(state.product?.newAdProduct?.name ?? '',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: ColorSet.grayRoundedBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.0),
                        )),
                    child: Text(
                      state.product?.newAdProductKind?.getOrCrash() ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorSet.gray2),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: ColorSet.grayRoundedBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.0),
                        )),
                    child: Text(
                      state.product?.newAdProductUnitMeasure?.name ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorSet.gray2),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Center(
                  child: Image.asset(
                    'assets/placeholder.png',
                    width: 233,
                    height: 160,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Center(child: Text('Selecione as fotos para seu anúncio')),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                    onPressed: () async {
                      final XFile? pickedFile = await _picker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 70,
                        maxWidth: 1200,
                        maxHeight: 1200,
                      );
                      if (pickedFile != null) {
                        context
                            .read<AddPhotoBloc>()
                            .add(AddPhotoEvent.photoSelected(pickedFile.path));
                      }
                    },
                    child: const Text(
                      'Escolher da galeria de fotos',
                      style: TextStyle(
                        color: ColorSet.brown1,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ),
              MaterialButton(
                onPressed: () async {
                  final XFile? pickedFile = await _picker.pickImage(
                    source: ImageSource.camera,
                    imageQuality: 70,
                    maxWidth: 1200,
                    maxHeight: 1200,
                  );
                  if (pickedFile != null) {
                    context
                        .read<AddPhotoBloc>()
                        .add(AddPhotoEvent.photoSelected(pickedFile.path));
                  }
                },
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      color: ColorSet.brown1,
                      child: const Center(
                        child: Text(
                          'Tirar foto deste produto',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      );
}
