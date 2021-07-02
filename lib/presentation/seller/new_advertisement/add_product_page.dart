import 'package:conectacampo/application/seller/new_advertisement/add_product/add_product_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/base_input_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/add_photos_summary.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProductPage extends StatelessWidget {
  final NewAdProduct? edited;
  const AddProductPage({required this.edited});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<AddProductBloc>()..add(const AddProductEvent.started()),
        child: AddProductForm());
  }
}

class AddProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductBloc, AddProductState>(
        listener: (context, state) {
      if (state.isLoading) {
        EasyLoading.show(status: 'Carregando');
      } else {
        EasyLoading.dismiss();
      }

      if (state.proceed) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddPhotosSummaryPage(
            products: state.products,
          ),
        ));
      }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: ColorSet.backgroundInput,
        appBar: AppBar(
            backgroundColor: ColorSet.brown1,
            title: Text(
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
                  Text(
                    'O que você quer anunciar hoje?',
                    style: TextStyle(
                        color: ColorSet.brown1, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 40,
                    ),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) =>
                        NewProductWidget(index: index),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                      onPressed: () {
                        context
                            .read<AddProductBloc>()
                            .add(const AddProductEvent.addMoreTap());
                      },
                      child: Center(
                        child: Text(
                          'Adicionar mais produtos',
                          style: TextStyle(
                              color: ColorSet.brown1,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (!state.showBtnProceed) {
                        return;
                      }

                      context
                          .read<AddProductBloc>()
                          .add(const AddProductEvent.btnProceedTap());
                    },
                    child: Center(
                      child: Text(
                        'Já adicionei tudo',
                        style: TextStyle(
                            color: state.showBtnProceed
                                ? ColorSet.brown1
                                : ColorSet.gray10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class NewProductWidget extends StatelessWidget {
  final int index;
  const NewProductWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductBloc, AddProductState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final items = state.optionProductsFailureOrSuccess
            .fold(() => List<Product>.empty(),
                (a) => a.fold((l) => List<Product>.empty(), (r) => r))
            .toList();

        final whereList = items
            .where((element) =>
                element.id == state.products[index].newAdProduct?.id)
            .toList();

        Product? product = whereList.isEmpty ? null : whereList.first;

        final selectedUnitMeasures = product?.unitMeasures.where((element) =>
            element.id == state.products[index].newAdProductUnitMeasure?.id);

        UnitMeasure? unitMeasureSelected =
            (selectedUnitMeasures?.isEmpty ?? true)
                ? null
                : selectedUnitMeasures?.first;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseInputContainer(
              child: DropdownSearch<Product>(
                  dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                        children: [
                          SvgPicture.asset('assets/tag-outline.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(itemAsString.isEmpty ? 'Produto*' : itemAsString)
                        ],
                      ),
                  dropdownSearchDecoration:
                      const InputDecoration(border: InputBorder.none),
                  searchBoxDecoration:
                      InputDecoration(hintText: 'Digite o nome do produto'),
                  showSearchBox: true,
                  validator: (value) =>
                      value == null ? 'Campo obrigatório' : null,
                  errorBuilder: (context, searchEntry, exception) => const Text(
                        'Campo obrigatório',
                        style: TextStyle(color: Colors.red),
                      ),
                  itemAsString: (item) => item.name,
                  selectedItem: product,
                  items: items,
                  onChanged: (newValue) {
                    context
                        .read<AddProductBloc>()
                        .add(AddProductEvent.productSelected(index, newValue));
                  },
                  hint: 'Produto*'),
            ),
            SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<String>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    SvgPicture.asset('assets/server.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty ? 'Tipo*' : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                selectedItem: state.products[index].newAdProductKind?.value
                    .fold((l) => null, (r) => r),
                items: product?.kinds,
                onChanged: (newValue) {
                  context
                      .read<AddProductBloc>()
                      .add(AddProductEvent.kindSelected(index, newValue));
                },
                hint: 'Tipo*',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<String>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    Icon(Icons.list),
                    SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty ? 'Classificação*' : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                selectedItem: state.products[index].newAdProductRating?.value
                    .fold((l) => null, (r) => r),
                items: product?.ratings,
                onChanged: (newValue) {
                  context
                      .read<AddProductBloc>()
                      .add(AddProductEvent.ratingSelected(index, newValue));
                },
                hint: 'Classificação*',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<UnitMeasure>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    SvgPicture.asset('assets/box.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty
                        ? 'Embalagem / Medida*'
                        : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                itemAsString: (item) => item.name,
                selectedItem: unitMeasureSelected,
                items: whereList.isEmpty
                    ? List.empty()
                    : whereList.first.unitMeasures,
                onChanged: (newValue) {
                  context.read<AddProductBloc>().add(
                      AddProductEvent.unitMeasureSelected(index, newValue));
                },
                hint: 'Embalagem / Medida*',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BaseInputContainer(
                child: SizedBox(
              width: double.infinity,
              height: 70,
              child: Row(
                children: [
                  SvgPicture.asset('assets/table_add.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) => context
                          .read<AddProductBloc>()
                          .add(AddProductEvent.quantityChanged(index, value)),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Quantidade*'),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            BaseInputContainer(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  minLines: 5,
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText:
                          'Descreva aqui informações complementares e relevantes que não constam nos campos acima”')),
            ))
          ],
        );
      },
    );
  }
}
