import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:flutter/material.dart';

class SearchAdvertisement extends StatelessWidget {
  final Product _product;
  const SearchAdvertisement(this._product);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
      child: Row(
        children: [
          SizedBox(
            width: 74,
            height: 74,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                _product.images.first.mediumAvatar.getOrCrash(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: '${_product.name} ', style: textStyle),
                  TextSpan(text: _product.kind)
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                      width: 33.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(_product
                                      .advertisement?.seller.thumbAvatar
                                      ?.getOrCrash() ??
                                  '')))),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Vendedor'),
                      Text(
                        _product.advertisement?.seller.name.getOrCrash() ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
