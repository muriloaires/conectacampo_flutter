import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/onboarding/onboarding.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conecta Campo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: ColorSet.colorPrimaryGreenButton,
      ),
      home: Stack(children: [
        SplashScreen(
            seconds: 1,
            useLoader: false,
            navigateAfterSeconds: Tutorial(),
            image: Image.asset('assets/logo.png'),
            // imageBackground: MemoryImage(data),
            backgroundColor: ColorSet.colorPrimaryGreen,
            photoSize: 100.0),
        Image.asset(
          'assets/dots.png',
          width: double.infinity,
          height: double.infinity,
        )
      ]),
    );
  }

  Future<Either<AuthFailure, Unit>> requestSmsCode(
      {@required String phoneNumber}) async {
    AuthFailure error;
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted:
            (PhoneAuthCredential phoneAuthCredential) async {},
        verificationFailed: (FirebaseAuthException authException) {
          if (authException.code == 'invalid-phone-number') {
            error = const AuthFailure.invalidPhoneNumber();
          }
          // showSnackbar('Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
        },
        codeSent: (String verificationId, [int forceResendingToken]) async {
          // showSnackbar('Please check your phone for the verification code.');
          // _verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // showSnackbar("verification code: " + verificationId);
          // _verificationID = verificationId;
        });

    return error == null ? right(unit) : left(error);
  }
}
