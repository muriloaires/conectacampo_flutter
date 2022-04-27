import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/phone_number_page.dart';
import 'package:conectacampo/presentation/sign_in/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotLoggedWidget extends StatelessWidget {
  const NotLoggedWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/white_icon.svg',
                height: 80,
                color: Colors.grey[400],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Você não está logado',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => PhoneNumberPage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: ColorSet.green1,
                child: const Center(
                  child: Text(
                    'Toque aqui para entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
