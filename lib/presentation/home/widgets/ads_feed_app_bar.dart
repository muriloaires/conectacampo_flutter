import 'package:flutter/material.dart';

class AdsFeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdsFeedAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,

      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 20, 0,0),
        child: Row(
          children: [
            Text('Sua Localização')
          ],

        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
