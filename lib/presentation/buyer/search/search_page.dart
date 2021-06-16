import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/buyer/search/search_form_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/product/product_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/search_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchFormBloc>(),
      child: SearchForm(),
    );
  }
}

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
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
                          child: const TextField(
                            cursorColor: ColorSet.colorPrimaryGreen,
                            style: TextStyle(fontFamily: 'Roboto'),
                            decoration: InputDecoration(
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
                        const Text.rich(TextSpan(
                            text: 'Produtos e Retirada em: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: 'Ceasa Goiânia',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: BlocListener<SearchFormBloc, SearchFormState>(
        listener: (context, state) {
          if (state.productSelected) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (builder) => ProductPage()));
          }
        },
        child: Column(
          children: [
            Visibility(
                visible: !context.read<SearchFormBloc>().state.productSelected,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(52, 15, 52, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                      padding: const EdgeInsets.fromLTRB(52, 15, 52, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Escolher data de retirada'),
                          const Text(
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
              child: context.read<SearchFormBloc>().state.productSelected
                  ? ProductPage()
                  : ListView.separated(
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 2,
                          color: ColorSet.gray10,
                        );
                      },
                      itemCount: 3,
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Wrap(
                          children: [
                            GestureDetector(
                              onTap: () => context.read<SearchFormBloc>().add(
                                    const SearchFormEvent.productSelected(),
                                  ),
                              child: SearchAdvertisement(),
                            )
                          ],
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
