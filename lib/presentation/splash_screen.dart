import 'package:conectacampo/application/splash/splash_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider<SplashBloc>(
      create: (context) => getIt()..add(const SplashEvent.started()),
      child: BlocConsumer<SplashBloc, SplashState>(
        builder: (context, state) => Scaffold(
          body: Container(
            color: ColorSet.colorPrimaryGreen,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/splash_bottom_left_image.png',
                    height: screenHeight / 2,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child:
                      SvgPicture.asset('assets/splash_logo.svg', height: 150),
                )
              ],
            ),
          ),
        ),
        listener: (context, state) {
          final firstRoute = state.firstScreen.fold(() => '', (a) => a);

          if (firstRoute.isNotEmpty) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil(firstRoute, (route) => false);
          }
        },
      ),
    );
  }
}
