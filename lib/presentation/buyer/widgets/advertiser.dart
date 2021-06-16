import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class Advertiser extends StatelessWidget {
  final bool isSearch;

  const Advertiser({required this.isSearch}) : super();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: Row(
        children: [
          Container(
              width: 72.0,
              height: 72.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png")))),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Carl Johnson (CJ)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'Placa:',
                  style: TextStyle(
                    color: ColorSet.gray2,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: ' PKN 2044',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ])),
              Visibility(
                visible: isSearch,
                child: const Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Último anúncio: ',
                    style: TextStyle(
                      color: ColorSet.gray2,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: 'Tomate e Pimentão',
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
        ],
      ),
    );
  }
}
