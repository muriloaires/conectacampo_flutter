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

// BlocConsumer<SearchFormBloc, SearchFormState>(
//
//         builder: (context, state) =>
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
        },
        builder: (context, state) => Scaffold(
              appBar: AppBar(
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
                                    textInputAction: TextInputAction.search,
                                    onSubmitted: (value) {
                                      context.read<SearchFormBloc>().add(
                                          SearchFormEvent.searchTapped(value));
                                    },
                                    cursorColor: ColorSet.colorPrimaryGreen,
                                    style:
                                        const TextStyle(fontFamily: 'Roboto'),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.search,
                                        color: ColorSet.colorPrimaryGreen,
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
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
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
              ),
              body: state.showHistory
                  ? _getHistory(context, state)
                  : Column(
                      children: [
                        Visibility(
                            visible: context
                                .read<SearchFormBloc>()
                                .state
                                .showFilters,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(52, 15, 52, 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('+100 resultados'),
                                      Text(
                                        'Filtrar',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: ColorSet.colorPrimaryGreen,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: ColorSet.gray10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(52, 15, 52, 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Escolher data de retirada'),
                                      Text(
                                        '22 de maio',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: ColorSet.colorPrimaryGreen,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                              ],
                            )),
                        Expanded(
                          child: state.optionOfAdsProductsFailureOrSuccess.fold(
                              () => Container(),
                              (a) => a.fold((l) => const Text('Error'), (r) {
                                    if (r.isEmpty) {
                                      return const Center(
                                          child: Text(
                                              'Nenhum produto encontrado'));
                                    } else {
                                      return ListView.separated(
                                          separatorBuilder: (context, index) {
                                            return Container(
                                              height: 2,
                                              color: ColorSet.gray10,
                                            );
                                          },
                                          itemCount: r.length,
                                          physics:
                                              const ClampingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Wrap(
                                              children: [
                                                GestureDetector(
                                                  onTap: () => context
                                                      .read<SearchFormBloc>()
                                                      .add(
                                                        const SearchFormEvent
                                                            .productSelected(),
                                                      ),
                                                  child: SearchAdvertisement(
                                                      r[index]),
                                                )
                                              ],
                                            );
                                          });
                                    }
                                  })),
                        ),
                      ],
                    ),
            ));
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
