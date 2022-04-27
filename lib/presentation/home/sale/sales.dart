import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/presentation/home/ads/ads_feed.dart';
import 'package:flutter/material.dart';

class Sales extends StatelessWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.separated(
        itemBuilder: (context, index) => SaleItem(),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class SaleItem extends StatelessWidget {
  const SaleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: frutas[Random().nextInt(5)],
              height: 100,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'R\$ 9,89',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Pêra - Kg',
            style: TextStyle(fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
