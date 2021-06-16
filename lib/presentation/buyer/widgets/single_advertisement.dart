import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/product_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class SingleAdvertisement extends StatelessWidget {
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
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductAdvertisement();
              }),
        )
      ],
    );
  }
}
