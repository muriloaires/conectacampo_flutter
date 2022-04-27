import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/presentation/store/store_page.dart';
import 'package:flutter/material.dart';

class LastPartners extends StatelessWidget {
  const LastPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        child: Container(
      height: 75,
      child: ListView.separated(
        itemBuilder: (context, index) => Partner(),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    ));
  }
}

class Partner extends StatelessWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage:
            CachedNetworkImageProvider(urls[Random().nextInt(3)]),
          ),
          FittedBox(
            child: Text(
              nomes[Random().nextInt(3)],
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
