import 'package:conectacampo/application/buyer/search/search_form_bloc.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/widgets/search_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
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
          EasyLoading.show(status: 'Carregando', dismissOnTap: true);
        } else {
          EasyLoading.dismiss();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: EmptyAppBar(),
          body: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              SearchAppBar(),
              Visibility(
                visible: context.read<SearchFormBloc>().state.showFilters,
                child: SearchFilters(),
              ),
              context
                  .read<SearchFormBloc>()
                  .state
                  .optionOfAdsProductsFailureOrSuccess
                  .fold(
                    () => Container(),
                    (a) => a.fold(
                        (l) => const Center(child: Text('Algum erro ocorreu')),
                        (r) {
                      if (r.isEmpty) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Nenhum produto encontrado'),
                          ),
                        );
                      } else {
                        return ListView.separated(
                          separatorBuilder: (context, index) {
                            return Container(
                              height: 1,
                              color: ColorSet.gray10,
                            );
                          },
                          itemCount: r.length,
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SearchAdvertisement(r[index]);
                          },
                        );
                      }
                    }),
                  ),
            ],
          ),
        );
      },
    );
  }
}

class EmptyAppBar extends AppBar implements PreferredSizeWidget {
  EmptyAppBar() : super(backgroundColor: ColorSet.green1);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.zero;
}

class SearchAppBar extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Container(
          color: ColorSet.green1,
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          height: 80,
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
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
                  child: BlocConsumer<SearchFormBloc, SearchFormState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      textController.text = context
                          .read<SearchFormBloc>()
                          .state
                          .optionOfSelectedProduct
                          .fold(() => '', (a) => a.name);
                      return TextField(
                        autofocus: true,
                        controller: context
                            .read<SearchFormBloc>()
                            .state
                            .optionOfSelectedProduct
                            .fold(() => null, (a) => textController),
                        onChanged: (newValue) {
                          context
                              .read<SearchFormBloc>()
                              .add(SearchFormEvent.nameChanged(newValue));
                        },
                        decoration: const InputDecoration(
                          hintText: 'Nome do produto',
                          border: InputBorder.none,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: ColorSet.green1,
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/location_outline.svg',
                width: 16,
                height: 16,
                color: Colors.white,
              ),
              Flexible(
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Produtos e Retirada em: ',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      TextSpan(
                        text: context.read<SearchFormBloc>().state.place?.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300, minHeight: 0.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  context.read<SearchFormBloc>().add(
                        SearchFormEvent.onProductSelected(
                          context
                              .read<SearchFormBloc>()
                              .state
                              .filteredProducts[index],
                        ),
                      );
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                title: Text(
                  context
                      .read<SearchFormBloc>()
                      .state
                      .filteredProducts[index]
                      .name,
                ),
              ),
              itemCount:
                  context.read<SearchFormBloc>().state.filteredProducts.length,
            ),
          ),
        ),
      ],
    );
  }
}

//
class SearchFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFormBloc, SearchFormState>(
      builder: (context, state) {
        final productFailureOrSuccess =
            context.read<SearchFormBloc>().state.optionOfSelectedProduct;
        final List<String> ratings =
            List.from(productFailureOrSuccess.fold(() => [], (a) => a.ratings));

        ratings.insert(0, 'Toque para escolher uma classificação');
        final List<String> kinds =
            List.from(productFailureOrSuccess.fold(() => [], (a) => a.kinds));
        kinds.insert(0, 'Toque para escolher um tipo');
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
              title: const Text('Tipo'),
              subtitle: Text(
                  kinds[context.read<SearchFormBloc>().state.kindRadioValue]),
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
                  title: Text(kinds[index]),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.kindRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioKindTap(index)),
                ),
                itemCount: kinds.length,
              ),
            ),
            ListTile(
              title: const Text('Classificação'),
              subtitle: Text(
                ratings[context.read<SearchFormBloc>().state.ratingRadioValue],
              ),
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
                  title: Text(
                    ratings[index],
                  ),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.ratingRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioRatingTap(index)),
                ),
                itemCount: ratings.length,
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
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
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
            ),
            const SizedBox(
              height: 40,
            )
          ],
        );
      },
    );
  }
}
