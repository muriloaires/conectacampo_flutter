import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/sign_in/user_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  final _pageController = PageController();
  var _showArrowLeft = false;
  var _showBtnRegister = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (page) {
              setState(() {
                _showArrowLeft = page != 0;
                _showBtnRegister = page == 3;
              });
            },
            controller: _pageController,
            children: [
              Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Procure!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.colorPrimaryGreen,
                                fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'Conectamos Compradores e vendedores de Hortaliças, frutas e legumes na sua região, de maneira fácil e prática!',
                          style: TextStyle(height: 2),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          'assets/onboarding_1.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Encontre!',
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
                          'Encontre com facilidade produtores locais para o seu negócio através do nosso sistema de anúncio, não perca tempo em procuras longas no Ceasa ou mercados',
                          style: TextStyle(height: 2),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'assets/onboarding_2.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          // ignore: prefer_const_constructors
                          child: Text(
                            'Segurança',
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
                          'Com o nosso sistema de conexão comprador e vendedor conseguem fazer uma transação segura',
                          style: TextStyle(height: 2),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'assets/onboarding_3.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Facilidade',
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
                          'Seu tempo é pracioso e por isso nós facilitamos a entrega entre vendedor e comprador.',
                          style: TextStyle(height: 2),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'assets/onboarding_1.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Wrap(
                  children: [
                    Column(
                      children: [
                        SmoothPageIndicator(
                            controller: _pageController, // PageController
                            count: 4,
                            effect: const JumpingDotEffect(
                                activeDotColor: ColorSet.colorPrimaryGreen,
                                dotColor: ColorSet.colorPrimaryGreenDisabled,
                                dotHeight: 4,
                                dotWidth: 4), // your preferred effect
                            onDotClicked: (index) {}),
                        const SizedBox(
                          height: 56,
                        ),
                        Visibility(
                          visible: !_showBtnRegister,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _pageController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeIn);
                                  },
                                  child: _showArrowLeft
                                      ? SvgPicture.asset(
                                          'assets/arrow_left_green.svg',
                                          width: 33,
                                        )
                                      : const SizedBox(
                                          width: 33,
                                        )),
                              TextButton(
                                  onPressed: () async {
                                    await saveOnboardingCheck();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UserType()));
                                  },
                                  child: const Text(
                                    'Pular',
                                    style: TextStyle(
                                      color: ColorSet.colorPrimaryGreen,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeIn);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/arrow_right_green.svg',
                                    width: 33,
                                  ))
                            ],
                          ),
                        ),
                        Visibility(
                          visible: _showBtnRegister,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserType()));
                            },
                            color: ColorSet.colorPrimaryGreen,
                            child: const Text(
                              'Cadastro',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
