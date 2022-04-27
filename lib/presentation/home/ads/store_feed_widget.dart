import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/store/store_page.dart';
import 'package:flutter/material.dart';

import 'ads_feed.dart';

class StoreFeed extends StatelessWidget {
  const StoreFeed();

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return SizedBox(
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(8),
            leading: CachedNetworkImage(
              imageUrl: urls[random.nextInt(3)],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(nomes[random.nextInt(3)]),
            subtitle: Text(especialidades[random.nextInt(3)]),
            trailing: MaterialButton(
              child: Text(
                'Ver Loja',
                style: TextStyle(
                    color: ColorSet.green1,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {},
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text(
              'Produtos',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            height: 120,
            width: double.infinity,
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (index == 4) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.chevron_right,
                          size: 60,
                        ),
                        SizedBox(height: 10),
                        Text('Ver mais')
                      ],
                    ),
                  );
                } else {
                  return StoreProduct();
                }
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}

class StoreProduct extends StatelessWidget {
  const StoreProduct();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: frutas[Random().nextInt(5)],
              height: 80,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Pêra - Kg',
            style: TextStyle(fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Text(
            'R\$ 9,89',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
