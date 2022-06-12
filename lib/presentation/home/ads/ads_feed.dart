import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/presentation/chat/chat_list/chat_list_page.dart';
import 'package:conectacampo/presentation/chat/chat_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/home/ads/store_feed_widget.dart';
import 'package:conectacampo/presentation/home/ads/widgets/categories.dart';
import 'package:conectacampo/presentation/home/last_partners/last_partners.dart';
import 'package:conectacampo/presentation/home/sale/sales.dart';
import 'package:conectacampo/presentation/home/widgets/ads_feed_search_widget.dart';
import 'package:conectacampo/presentation/home/widgets/publish_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AdsFeedPage extends StatefulWidget {
  const AdsFeedPage(this.globalKey);

  final GlobalKey globalKey;

  @override
  State<AdsFeedPage> createState() => _AdsFeedPageState();
}

class _AdsFeedPageState extends State<AdsFeedPage> {
  bool _isFabVisible = true;
  ChatFacade chatFacade = ChatFacade();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.globalKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return Scaffold(
              backgroundColor: Colors.white,
              floatingActionButton: _isFabVisible
                  ? PublishFAB(
                      onPressed: () async {
                        // User otherUser = const User(
                        //   1,
                        //   'Murilo Aires',
                        //   'Micurilo',
                        //   null,
                        //   '+5562981323980',
                        //   null,
                        //   null,
                        //   null,
                        //   null,
                        //   'muriloaires1@gmail.com',
                        //   null,
                        // );
                        // final chat = await chatFacade.openChat(otherUser);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ChatListPage(),
                          ),
                        );
                      },
                    )
                  : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniEndFloat,
              body: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  // if (notification.direction == ScrollDirection.forward) {
                  //   if (!_isFabVisible) {
                  //     setState(() {
                  //       _isFabVisible = true;
                  //     });
                  //   }
                  // } else if (notification.direction == ScrollDirection.reverse) {
                  //   if (_isFabVisible) {
                  //     setState(() {
                  //       _isFabVisible = false;
                  //     });
                  //   }
                  // }

                  return true;
                },
                child: ListView(
                  children: [
                    AppBar(
                      title: Row(
                        children: const [
                          Text(
                            'Sua Localização',
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          )
                        ],
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      actions: const [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: ColorSet.green1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: ColorSet.green1,
                          ),
                        ),
                      ],
                    ),
                    Categories(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AdsFeedSearchWidget(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Promoções',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.green1,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Sales(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Parceiros',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.green1,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: LastPartners(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Lojas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorSet.green1,
                            fontSize: 16),
                      ),
                    ),
                    AdsList(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class AdsList extends StatelessWidget {
  const AdsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) => StoreFeed(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
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
