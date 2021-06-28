import 'package:conectacampo/application/buyer/product/product_page_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  final AdProduct _product;

  const ProductPage(this._product);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductPageBloc, ProductPageState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: null,
              toolbarHeight: 120,
              title: SizedBox(
                height: 120,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(Icons.arrow_back),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Center(child: Text(_product.name)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/location_outline.svg',
                                width: 16,
                                height: 16,
                                color: Colors.white,
                              ),
                              const Text.rich(TextSpan(
                                  text: 'Produtos e Retirada em: ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Ceasa Goiânia',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 44, 50, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _product.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          color: ColorSet.gray10,
                          padding: const EdgeInsets.all(2),
                          child: Text(
                            '${_product.kind} ${_product.unitMeasure}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: ColorSet.gray2),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          child: Image.network(
                            _product.images.first.originalAvatar.getOrCrash(),
                            fit: BoxFit.cover,
                            height: 170,
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(TextSpan(
                            text: 'Confirmado: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      '${_product.quantity} ${_product.unitMeasure}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal))
                            ])),
                        Text.rich(TextSpan(
                            text: 'Embalagem: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: _product.unitMeasure,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(height: 1, color: ColorSet.grayLine),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Entrega para: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: _product.advertisement?.deliveryAt
                                      .getDateAndMonthName(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.greenTextColor,
                                  ))
                            ])),
                        const Text.rich(TextSpan(
                            text: 'Horário limite para entrega: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: '05h00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: ColorSet.greenTextColor,
                                  ))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                  color: ColorSet.grayRoundedBackground,
                                  child: Center(
                                    child: TextField(
                                      onChanged: (value) {},
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Quantidade: -',
                                          hintStyle:
                                              TextStyle(color: ColorSet.gray2)),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: ColorSet.green1,
                                      ),
                                    ),
                                  )),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                color: ColorSet.greenTextColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Flexible(
                                      child: const Text(
                                        'Horário para entrega: Combinar com o vendedor',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset('assets/whatsapp.svg')
                                  ],
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                color: ColorSet.grayDark,
                                child: const Center(
                                  child: Text(
                                    'Reservar agora',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(TextSpan(
                            text: 'Reserva Garantida ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      ' Quando você confirma o vendedor recebe imediatamente sua intenção de compra',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ))
                            ])),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text.rich(TextSpan(
                            text: 'Horário com o vendedor ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      'Você vai escolher o horário para retirar a compra com o vendedor',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(height: 1, color: ColorSet.grayLine),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                        /*Advertiser(
                  isSearch: true,
                )*/
                        Text('Advertiser'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Entrar no grupo de vendedor!',
                          style: TextStyle(
                              color: ColorSet.greenTextColor,
                              decoration: TextDecoration.underline),
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'O que você precisa saber sobre esse produto:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('- Descição'),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Outros produtos anunciados pelo vendedor:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // SingleAdvertisement(product.advertisement!)
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
