import 'package:conectacampo/application/buyer/search/search_form_bloc.dart';
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
        EasyLoading.show(status: 'Carregando');
      } else {
        EasyLoading.dismiss();
      }

      if (state.productSelected) {}
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
              child: SizedBox(
                height: 40,
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
                        child: TextField(
                          controller: textController,
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) {
                            context
                                .read<SearchFormBloc>()
                                .add(SearchFormEvent.searchTapped(value));
                          },
                          cursorColor: ColorSet.colorPrimaryGreen,
                          style: const TextStyle(fontFamily: 'Roboto'),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                context.read<SearchFormBloc>().add(
                                    SearchFormEvent.searchTapped(
                                        textController.text.trim()));
                              },
                              child: const Icon(Icons.search,
                                  color: ColorSet.colorPrimaryGreen),
                            ),
                          ),
                        ),
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
                      Flexible(
                        child: Text.rich(
                          TextSpan(children: [
                            const TextSpan(
                              text: 'Produtos e Retirada em: ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
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
                        ),
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

class SearchFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFormBloc, SearchFormState>(
      builder: (context, state) {
        final productFailureOrSuccess = context
            .read<SearchFormBloc>()
            .state
            .optionOfProductFailureOrSuccess;
        return ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            ListTile(
                title: Text(state.optionOfAdsProductsFailureOrSuccess.fold(
                    () => '',
                    (a) => a.fold(
                        (l) => '',
                        (r) => r.length > 100
                            ? '+100 resultados'
                            : '${r.length} resultado(s)'))),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Filtrar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorSet.colorPrimaryGreen,
                    ),
                  ),
                )),
            const ListTile(
                title: Text(
              'Filtrar por:',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            ListTile(
              title: const Text('Classificação'),
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
                  title: Text(productFailureOrSuccess.fold(() => '',
                      (a) => a.fold((l) => '0', (r) => r.ratings[index]))),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.ratingRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioRatingTap(index)),
                ),
                itemCount: productFailureOrSuccess.fold(
                    () => 0, (a) => a.fold((l) => 0, (r) => r.ratings.length)),
              ),
            ),
            ListTile(
              title: const Text('Tipo'),
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
                  title: Text(productFailureOrSuccess.fold(() => '',
                      (a) => a.fold((l) => '', (r) => r.kinds[index]))),
                  value: index,
                  groupValue:
                      context.read<SearchFormBloc>().state.kindRadioValue,
                  onChanged: (value) => context
                      .read<SearchFormBloc>()
                      .add(SearchFormEvent.onRadioKindTap(index)),
                ),
                itemCount: productFailureOrSuccess.fold(
                    () => 0, (a) => a.fold((l) => 0, (r) => r.kinds.length)),
              ),
            ),
            const SizedBox(height: 4),
          ],
        );
      },
    );
  }
}