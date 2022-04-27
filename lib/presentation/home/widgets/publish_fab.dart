import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class PublishFAB extends StatelessWidget {
  const PublishFAB({required this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorSet.green1,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: const Text(
          "Anunciar",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
