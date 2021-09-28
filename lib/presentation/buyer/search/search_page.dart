import 'package:conectacampo/application/buyer/search/search_form_bloc.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/widgets/search_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchFormBloc>()..add(const SearchFormEvent.started()),
      child: SearchForm(),
    );
  }
}

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchFormBloc, SearchFormState>(
        listener: (context, state) {
      if (state.searching) {
        EasyLoading.show(status: 'Carregando');
      } else {
        EasyLoading.dismiss();
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: SearchAppBar(),
        body: state.showHistory
            ? _getHistory(context, state)
            : ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Visibility(
                      visible: context.read<SearchFormBloc>().state.showFilters,
                      child: SearchFilters()),
                  Expanded(
                    child: state.optionOfAdsProductsFailureOrSuccess.fold(
                        () => Container(),
                        (a) => a.fold((l) => const Text('Error'), (r) {
                              if (r.isEmpty) {
                                return const Center(
                                    child: Text('Nenhum produto encontrado'));
                              } else {
                                return ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Container(
                                        height: 2,
                                        color: ColorSet.gray10,
                                      );
                                    },
                                    itemCount: r.length,
                                    physics: const ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return SearchAdvertisement(r[index]);
                                    });
                              }
                            })),
                  ),
                ],
              ),
      );
    });
  }

  Widget _getHistory(BuildContext context, SearchFormState state) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(state.history[index]),
        onTap: () => context
            .read<SearchFormBloc>()
            .add(SearchFormEvent.historySelected(state.history[index])),
      ),
      itemCount: state.history.length,
    );
  }
}

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 120,
      title: SizedBox(
        height: 120,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: ColorSet.grayRoundedBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: BlocBuilder<SearchFormBloc, SearchFormState>(
                            builder: (context, state) {
                          final List<Product> items =
                              state.optionOfProductsFailureOrSuccess.fold(
                                  () => [], (a) => a.fold((l) => [], (r) => r));
                          return DropdownSearch<Product>(
                              dropdownBuilder:
                                  (context, selectedItem, itemAsString) => Text(
                                    itemAsString.isEmpty
                                        ? 'Nome do produto'
                                        : itemAsString,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14),
                                  ),
                              dropdownSearchDecoration: const InputDecoration(
                                  border: InputBorder.none),
                              searchBoxDecoration: const InputDecoration(
                                hintText: 'Digite o nome do produto',
                              ),
                              dropDownButton: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                              showSearchBox: true,
                              validator: (value) =>
                                  value == null ? 'Campo obrigatório' : null,
                              errorBuilder: (context, searchEntry, exception) =>
                                  const Text(
                                    'Campo obrigatório',
                                    style: TextStyle(color: Colors.red),
                                  ),
                              itemAsString: (item) => item.name,
                              items: items,
                              onChanged: (newValue) {
                                if (newValue != null) {
                                  context.read<SearchFormBloc>().add(
                                      SearchFormEvent.onProductSelected(
                                          newValue));
                                }
                              },
                              hint: 'Produto*');
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/location_outline.svg',
                        width: 16,
                        height: 16,
                        color: Colors.white,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          const TextSpan(
                            text: 'Produtos e Retirada em: ',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          TextSpan(
                            text: context
                                .read<SearchFormBloc>()
                                .state
                                .place
                                ?.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 13),
                          ),
                        ]),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 120);
}
//
class SearchFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFormBloc, SearchFormState>(
      builder: (context, state) {
        final productFailureOrSuccess =
            context.read<SearchFormBloc>().state.optionOfSelectedProduct;
        return ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            const ListTile(
                title: Text(
              'Filtrar por:',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            ListTile(
              title: const Text('Classificação'),
              subtitle: Text(productFailureOrSuccess.fold(
                  () => '',
                  (p) => p.ratings[
                      context.read<SearchFormBloc>().state.ratingRadioValue])),
              trailing: const Icon(Icons.keyboard_arrow_down),
              onTap: () {
                context
                    .read<SearchFormBloc>()
                    .add(const SearchFormEvent.onTapRatingFilter());
              },
            ),
            Visibility(
              visible: context.read<SearchFormBloc>().state.isRatingVisible,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => RadioListTile(
                  title: Text(productFailureOrSuccess.fold(
                      () => '', (p) => p.ratings[index])),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.ratingRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioRatingTap(index)),
                ),
                itemCount: productFailureOrSuccess.fold(
                    () => 0, (r) => r.ratings.length),
              ),
            ),
            ListTile(
              title: const Text('Tipo'),
              subtitle: Text(productFailureOrSuccess.fold(
                  () => '',
                  (p) => p.kinds[
                      context.read<SearchFormBloc>().state.kindRadioValue])),
              trailing: Icon(context.read<SearchFormBloc>().state.isKindsVisible
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              onTap: () {
                context
                    .read<SearchFormBloc>()
                    .add(const SearchFormEvent.onTapKindFilter());
              },
            ),
            Visibility(
              visible: context.read<SearchFormBloc>().state.isKindsVisible,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => RadioListTile(
                  title: Text(productFailureOrSuccess.fold(
                      () => '', (r) => r.kinds[index])),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.kindRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioKindTap(index)),
                ),
                itemCount: productFailureOrSuccess.fold(
                    () => 0, (r) => r.kinds.length),
              ),
            ),
            ListTile(
              title: const Text('Data da feira'),
              subtitle: context
                  .read<SearchFormBloc>()
                  .state
                  .optionOfDateSelected
                  .fold(() => Container(), (a) => Text(a.getDayMonthYear())),
              onTap: () async {
                final dateSelect = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 1)),
                  firstDate: DateTime.now().add(const Duration(days: 1)),
                  lastDate: DateTime.now().add(const Duration(days: 60)),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.dark().copyWith(
                        colorScheme: const ColorScheme.dark(
                          primary: ColorSet.green2,
                          onPrimary: Colors.white,
                          surface: ColorSet.green2,
                          onSurface: Colors.black,
                        ),
                        dialogBackgroundColor: Colors.white,
                      ),
                      child: child!,
                    );
                  },
                );

                if (dateSelect != null) {
                  context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onDateSelected(dateSelect));
                }
              },
            ),
            ListTile(
              title: TextField(
                decoration:
                    const InputDecoration(hintText: 'Quantidade mínima'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onQtyChanged(value));
                },
              ),
            ),
            MaterialButton(
              onPressed: () {
                context
                    .read<SearchFormBloc>()
                    .add(const SearchFormEvent.onBtnFilterPressed());
              },
              child: Container(
                  color: ColorSet.green2,
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      'Filtrar',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        );
      },
    );
  }
}