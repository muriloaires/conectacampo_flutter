import 'package:conectacampo/application/seller/new_advertisement/add_product/add_product_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/base_input_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({Key? key}) : super(key: key);

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
                  ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => const NewProductWidget(),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          'Adicionar mais produtos',
                          style: TextStyle(
                              color: ColorSet.brown1,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ))
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
  const NewProductWidget({Key? key}) : super(key: key);

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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseInputContainer(
              child: DropdownSearch<Product>(
                  dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                        children: [
                          SvgPicture.asset('assets/tag-outline.svg'),
                          SizedBox(
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
                  itemAsString: (item) => item.name,
                  selectedItem: state.optionOfProductSelected
                      .foldRight(null, (a, previous) => a),
                  items: items,
                  onChanged: (newValue) {
                    context
                        .read<AddProductBloc>()
                        .add(AddProductEvent.productSelected(newValue));
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
                selectedItem: state.optionOfKindSelected
                    .foldRight(null, (a, previous) => a),
                items: state.optionOfProductSelected
                    .fold(() => List<String>.empty(), (a) => a.kinds),
                onChanged: (newValue) {
                  context
                      .read<AddProductBloc>()
                      .add(AddProductEvent.kindSelected(newValue));
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
                selectedItem: state.optionOfRatingSelected
                    .foldRight(null, (a, previous) => a),
                items: state.optionOfProductSelected
                    .fold(() => List<String>.empty(), (a) => a.ratings),
                onChanged: (newValue) {
                  context
                      .read<AddProductBloc>()
                      .add(AddProductEvent.ratingSelected(newValue));
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
                selectedItem: state.optionOfUnitMeasureSelected
                    .foldRight(null, (a, previous) => a),
                items: state.optionOfProductSelected.fold(
                    () => List<UnitMeasure>.empty(), (a) => a.unitMeasures),
                onChanged: (newValue) {
                  context
                      .read<AddProductBloc>()
                      .add(AddProductEvent.unitMeasureSelected(newValue));
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
