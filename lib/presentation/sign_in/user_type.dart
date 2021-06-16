import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/phone_number_page.dart';
import 'package:flutter/material.dart';

class UserType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          Icons.chevron_left,
          color: ColorSet.colorPrimaryGreen,
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/dots.png'),
          Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'O que você quer?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorSet.colorPrimaryGreen,
                          fontSize: 40),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Nos informe o que você quer fazer no app, comprar para você ou seu negócio ou vender seus produtos:',
                    style: TextStyle(height: 2),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: TextButton(
                      onPressed: () async {
                        await persistUserType('buyer');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneNumberPage()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ColorSet.colorPrimaryGreenButton),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      side: const BorderSide(
                                          color: ColorSet
                                              .colorPrimaryGreenButton)))),
                      child: const Text(
                        'Sou Comprador',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: TextButton(
                      onPressed: () async {
                        await persistUserType('seller');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneNumberPage()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ColorSet.colorPrimaryGreenButton),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      side: const BorderSide(
                                          color: ColorSet
                                              .colorPrimaryGreenButton)))),
                      child: const Text(
                        'Sou vendedor',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
