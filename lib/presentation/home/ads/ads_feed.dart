import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/home/ads/widgets/categories.dart';
import 'package:conectacampo/presentation/home/widgets/publish_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AdsFeedPage extends StatefulWidget {
  const AdsFeedPage(GlobalKey<NavigatorState> globalKey);

  @override
  State<AdsFeedPage> createState() => _AdsFeedPageState();
}

class _AdsFeedPageState extends State<AdsFeedPage> {
  bool _isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _isFabVisible ? PublishFAB() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            if (!_isFabVisible) {
              setState(() {
                _isFabVisible = true;
              });
            }
          } else if (notification.direction == ScrollDirection.reverse) {
            if (_isFabVisible) {
              setState(() {
                _isFabVisible = false;
              });
            }
          }

          return true;
        },
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: const [
            Categories(),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Últimos Anúncios',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorSet.green1,
                ),
              ),
            ),
            AdsList(),
          ],
        ),
      ),
    );
  }
}

class AdsList extends StatelessWidget {
  const AdsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) => AdsCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemCount: 10,
    );
  }
}

class AdsCard extends StatelessWidget {
  const AdsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              child: CachedNetworkImage(
                imageUrl: frutas[Random().nextInt(5)],
                height: 100,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Flexible(
                    child: Text(
                      'Pêra - Rocha Williams - Extra (primeira)',
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 4),
                  Flexible(
                    child: Text(
                      '20 kg(s) Disponíveis',
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 4),
                  Flexible(
                    child: Text(
                      'R\$ 9,89',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 20),
                  Flexible(
                    child: Text(
                      'Goiânia: CEASA GO',
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
              width: 24,
              child: Icon(Icons.chevron_right_outlined),
            )
          ],
        ),
      ),
    );
  }
}

final frutas = [
  'https://a-static.mlcdn.com.br/1500x1500/banana-prata/fruitexpress/dec3cf52cafb11eb9fe54201ac18500e/bc02f24c9111f1de15ac8c556855f7ee.jpg',
  'https://static.tuasaude.com/media/article/ak/gl/suco-de-maca-e-camomila-para-acalmar_29100_l.jpg',
  'https://conteudo.imguol.com.br/c/entretenimento/04/2017/12/11/abacaxi-1513012505452_v2_450x337.jpg',
  'https://img.vixdata.io/pd/jpg-large/pt/sites/default/files/m/melancia-inteira-cortada-1117-1400x800.jpg',
  'https://images.tcdn.com.br/img/img_prod/912574/muda_de_pera_cusui_com_90cm_459_1_20210625165010.jpg',
];
