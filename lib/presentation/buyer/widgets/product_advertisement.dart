import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class ProductAdvertisement extends StatelessWidget {
  final AdProduct _product;

  const ProductAdvertisement(this._product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              _product.images.first.mediumAvatar.getOrCrash(),
              height: 134.0,
              width: 166.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            _product.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: ColorSet.grayRoundedBackground,
                    borderRadius: BorderRadius.all(
                      Radius.circular(2.0),
                    )),
                child: Text(
                  _product.kind,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: ColorSet.gray2),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: ColorSet.grayRoundedBackground,
                    borderRadius: BorderRadius.all(
                      Radius.circular(2.0),
                    )),
                child: Text(
                  _product.unitMeasure,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: ColorSet.gray2),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
