import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class InviteWidget extends StatelessWidget {
  const InviteWidget();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Share.share(
            'Venha participar do Conecta Campo.\n\n Download para iPhone: https://apps.apple.com/br/app/conecta-campo-ceasa/id1592013727 \n\n Download para Android: https://play.google.com/store/apps/details?id=br.com.conectacampo',
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: const [
              Icon(Icons.share),
              SizedBox(width: 20),
              Text(
                'Convide seus amigos',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
