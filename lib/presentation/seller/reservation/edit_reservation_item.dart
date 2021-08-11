import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/presentation/core/base_input_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditReservationItemPage extends StatelessWidget {
  final ProductReservation product;

  const EditReservationItemPage(this.product);

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        TextEditingController(text: product.quantity.toString());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorSet.brown1,
          title: const Text(
            'Anunciar',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            BaseInputContainer(
              child: DropdownSearch<String>(
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
                  searchBoxDecoration: const InputDecoration(
                      hintText: 'Digite o nome do produto'),
                  showSearchBox: true,
                  validator: (value) =>
                      value == null ? 'Campo obrigatório' : null,
                  errorBuilder: (context, searchEntry, exception) => const Text(
                        'Campo obrigatório',
                        style: TextStyle(color: Colors.red),
                      ),
                  itemAsString: (item) => item,
                  selectedItem: product.adProduct.name,
                  items: [product.adProduct.name ?? ''],
                  enabled: false,
                  hint: 'Produto*'),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<String>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    SvgPicture.asset('assets/server.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty ? 'Tipo*' : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                selectedItem: product.adProduct.kind,
                items: [product.adProduct.kind],
                enabled: false,
                hint: 'Tipo*',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<String>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    const Icon(Icons.list),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty ? 'Classificação*' : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                selectedItem: product.adProduct.rating,
                items: [product.adProduct.rating],
                enabled: false,
                hint: 'Classificação*',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseInputContainer(
              child: DropdownSearch<String>(
                dropdownBuilder: (context, selectedItem, itemAsString) => Row(
                  children: [
                    SvgPicture.asset('assets/box.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(itemAsString.isEmpty
                        ? 'Embalagem / Medida*'
                        : itemAsString)
                  ],
                ),
                dropdownSearchDecoration:
                    const InputDecoration(border: InputBorder.none),
                selectedItem: product.adProduct.unitMeasure,
                items: [product.adProduct.unitMeasure],
                enabled: false,
                hint: 'Embalagem / Medida*',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseInputContainer(
                child: SizedBox(
              width: double.infinity,
              height: 70,
              child: Row(
                children: [
                  SvgPicture.asset('assets/table_add.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Quantidade*'),
                    ),
                  ),
                ],
              ),
            )),
            const Divider(),
            MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(int.parse(textEditingController.text));
                },
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      color: ColorSet.brown1,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      'Alterar',
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
  }
}
