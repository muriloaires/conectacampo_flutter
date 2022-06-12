import 'package:flutter/material.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        'assets/chat_background.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
