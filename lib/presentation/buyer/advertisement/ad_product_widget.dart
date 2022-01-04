import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/presentation/buyer/product/product_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdProductWidget extends StatelessWidget {
  final AdProduct product;

  const AdProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final result = await Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProductPage(product, true)),
        );
        if (result as bool) {
          Navigator.of(context).pop();
        }
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 38,
              foregroundImage: CachedNetworkImageProvider(
                product.images.first.thumbAvatar.getOrCrash(),
              ),
              backgroundColor: Colors.white,
              backgroundImage: const AssetImage('assets/placeholder.png'),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Produto'),
                  const SizedBox(height: 4),
                  Text(
                    product.name ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    runSpacing: 2,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        color: ColorSet.gray10,
                        child: Text(
                          product.kind,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: ColorSet.grayDark),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        padding: EdgeInsets.all(2),
                        color: ColorSet.gray10,
                        child: Text(product.rating,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorSet.grayDark)),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        padding: EdgeInsets.all(2),
                        color: ColorSet.gray10,
                        child: Text(product.unitMeasure,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorSet.grayDark)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}
