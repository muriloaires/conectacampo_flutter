import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class BaseInputContainer extends StatelessWidget {
  final Widget child;

  const BaseInputContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: child,
        ),
        Container(
          height: 1,
          color: ColorSet.grayLine,
        )
      ],
    );
  }
}
