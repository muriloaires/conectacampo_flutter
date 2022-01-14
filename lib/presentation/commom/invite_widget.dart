import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class InviteWidget extends StatelessWidget {
   InviteWidget({required this.isBuyer});

  final bool isBuyer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Share.share(
            'Você já conhece o Conecta Campo?\nBaixe o app e conheça a novidade que vai mudar a sua forma de comprar e vender frutas e hortaliças!\nTenha o Ceasa na palma da sua mão!\n\nDownload para iPhone: https://apps.apple.com/br/app/conecta-campo-ceasa/id1592013727\n\nDownload para Android: https://play.google.com/store/apps/details?id=br.com.conectacampo',
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.0, 0.0),
                // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  if (isBuyer) ColorSet.green1 else ColorSet.brown1,
                  if (isBuyer) ColorSet.green2 else ColorSet.brown2,
                ],
                // red to yellow
                tileMode: TileMode.clamp,
                // repeats the gradient over the canvas
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Convide seus amigos',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
