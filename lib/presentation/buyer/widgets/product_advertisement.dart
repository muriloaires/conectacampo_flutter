import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class ProductAdvertisement extends StatelessWidget {
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
              'https://revistaatletismo.com/wp-content/uploads/2017/12/tomate.jpg',
              height: 134.0,
              width: 166.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Tomate',
            style: TextStyle(fontWeight: FontWeight.bold),
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
                child: const Text(
                  'Baroa',
                  style: TextStyle(
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
                child: const Text(
                  'Saco - 30kg',
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
