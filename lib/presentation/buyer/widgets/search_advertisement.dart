import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/buyer/search/result/search_result_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';

class SearchAdvertisement extends StatelessWidget {
  final AdProduct product;

  const SearchAdvertisement(this.product);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    return BlocProvider<SearchResultBloc>(
      create: (context) => getIt()..add(SearchResultEvent.started(product)),
      child: BlocBuilder<SearchResultBloc, SearchResultState>(
        builder: (BuildContext context, state) {
          final adv = context.read<SearchResultBloc>().state.advertisement;
          return GestureDetector(
            onTap: () async {
              context
                  .read<BuyerMenuBloc>()
                  .add(const BuyerMenuEvent.produtDetailsOpen());
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductPage(product),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Row(

                    children: [
                      SizedBox(
                        width: 74,
                        height: 74,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: product.images.isNotEmpty
                              ? Image.network(
                                  product.images.first.mediumAvatar
                                      .getOrCrash(),
                                  fit: BoxFit.fill,
                                )
                              : Container(),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: '${product.name} ',
                                style: textStyle,
                              ),
                              TextSpan(text: product.kind)
                            ]),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                width: 33.0,
                                height: 33.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      adv?.seller.thumbAvatar?.getOrCrash() ??
                                          '',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Vendedor'),
                                  Text(
                                    adv?.seller.name ?? '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,0,0),
                    child: Text(
                      'Feira do dia: ${state.advertisement?.deliveryAt.getDateAndMonthName()}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
