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
          Align(
            alignment: Alignment.topCenter,
            child: PageView(
              onPageChanged: (page) {
                setState(() {
                  _showArrowLeft = page != 0;
                  _showBtnRegister = page == 4;
                });
              },
              controller: _pageController,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Quem somos!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.colorPrimaryGreen,
                                fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 180,
                          child: Text(
                            'Somos uma plataforma que conecta Compradores e Vendedores de hortaliças frutas e legumes na sua região de maneira fácil e prática.',
                            style: TextStyle(height: 2),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/onboarding_1.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
                    child: Center(
                      child: Column(
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
                            height: 10,
                          ),
                          const SizedBox(
                            height: 180,
                            child: Text.rich(
                              TextSpan(
                                  text:
                                      'Com o nosso sistema de busca, você tem acesso a todos os produtos comercializados nos Ceasas na palma da sua mão. ',
                                  style: TextStyle(height: 2),
                                  children: [
                                    TextSpan(
                                        text:
                                            'Antecipe suas compras e economize seu tempo!',
                                        style: TextStyle(
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: ColorSet.colorPrimaryGreen))
                                  ]),
                              style: TextStyle(height: 2),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                    padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Encontre!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.colorPrimaryGreen,
                                  fontSize: 40),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 180,
                            child: Text(
                              'Aqui você encontra produtos de qualidade e parceiros para a vida toda!',
                              style: TextStyle(height: 2),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                    padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
                    child: Column(
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
                          height: 10,
                        ),
                        const SizedBox(
                          height: 180,
                          child: Text(
                            'Com o nosso sistema de conexão, compradores e vendedores.',
                            style: TextStyle(height: 2),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/onboarding_1.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Visibilidade',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.colorPrimaryGreen,
                                fontSize: 40),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '• Anuncie para todos os compradores, compare de todos os vendedores.',
                                style: TextStyle(height: 2),
                              ),
                              Text(
                                '• Venda mais rápido, compre o melhor.',
                                style: TextStyle(height: 2),
                              ),
                              Text(
                                '• Um produto, muitos compradores. Muitos vendedores, seu produto.',
                                style: TextStyle(height: 2),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/onboarding_4.png',
                          height: 250,
                          width: 250,
                        )
                      ],
                    ))
              ],
            ),
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
                            count: 5,
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
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) => UserType(),
                                      ),
                                      (route) => false,
                                    );
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
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => UserType()),
                                  (route) => false);
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
