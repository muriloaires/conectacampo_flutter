import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/product/product_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/product_advertisement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleAdvertisement extends StatelessWidget {
  final Advertisement _advertisement;

  const SingleAdvertisement(this._advertisement);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(
            'Produtos disponíveis',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 230,
          width: double.infinity,
          child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _advertisement.products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ProductPage(_advertisement.products[index]),
                      ));

                      context
                          .read<BuyerMenuBloc>()
                          .add(const BuyerMenuEvent.produtDetailsClosed());
                    },
                    child:
                    ProductAdvertisement(_advertisement.products[index]));
              }),
        ),
        const Divider(),
      ],
    );
  }
}
