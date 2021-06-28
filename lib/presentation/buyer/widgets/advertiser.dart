import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class Advertiser extends StatelessWidget {
  final bool isSearch;
  final User user;
  final List<AdProduct> lastAdvertisements;
  const Advertiser({
    required this.isSearch,
    required this.user,
    required this.lastAdvertisements,
  }) : super();
  @override
  Widget build(BuildContext context) {
    String lastProducts = '';
    for (var element in lastAdvertisements) {
      lastProducts += '${element.name}, ';
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: Row(
        children: [
          Container(
              width: 72.0,
              height: 72.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          NetworkImage(user.thumbAvatar?.getOrCrash() ?? '')))),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name.getOrCrash(),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text.rich(TextSpan(children: [
                  const TextSpan(
                    text: 'Placa:',
                    style: TextStyle(
                      color: ColorSet.gray2,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: user.vehicleLicensePlate ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ])),
                Visibility(
                  visible: isSearch,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Último anúncio: ',
                      style: TextStyle(
                        color: ColorSet.gray2,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: lastProducts,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ])),
                ),
                Visibility(
                  visible: isSearch,
                  child: const Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Status do pedido:',
                      style: TextStyle(
                        color: ColorSet.gray2,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: 'Confirmado',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
