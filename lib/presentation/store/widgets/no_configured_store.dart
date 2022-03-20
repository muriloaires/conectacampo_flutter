import 'package:flutter/material.dart';

class NoConfiguredStore extends StatelessWidget {
  const NoConfiguredStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/no_store.png",
            height: 120,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Você ainda não configurou sua loja. Toque para configurar",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, ),
          )
        ],
      ),
    );
  }
}
