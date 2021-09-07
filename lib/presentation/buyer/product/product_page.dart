import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/buyer/product/product_page_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/widgets/product_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  final AdProduct _product;

  const ProductPage(this._product);
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return BlocProvider<ProductPageBloc>(
      create: (context) => getIt()..add(ProductPageEvent.started(_product)),
      child: BlocConsumer<ProductPageBloc, ProductPageState>(
          listener: (context, state) {
            if (context.read<ProductPageBloc>().state.setInitialQuantity) {
              context
                  .read<ProductPageBloc>()
                  .state
                  .optionOfReservatiomItemFailureOrSuccess
                  .fold(() => null, (a) {
                a.fold((l) => null, (r) {
                  context.read<ProductPageBloc>().add(
                      ProductPageEvent.ammountChanged(r.quantity.toString()));
                  textController.text = r.quantity.toString();
                });
              });
            }

            state.optionOfReservatiomItemFailureOrSuccess.fold(
                () => null,
                (a) => a.fold((l) {
                      if (state.showErrorMsg) {
                        l.maybeMap(
                            anotherSellerInCart: (anotherSellerInCart) =>
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext dialogContext) =>
                                      Dialog(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        const Divider(),
                                        CircleAvatar(
                                          radius: 35,
                                          backgroundColor: Colors.amber[400],
                                          child: const Text(
                                            '!',
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Divider(),
                                        const Center(
                                          child: Text(
                                              'Há produtos de outro vendedor no seu carrinho!',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        const Divider(height: 8),
                                        const Center(
                                          child: SizedBox(
                                            width: 180,
                                            child: Flexible(
                                              child: Text(
                                                'Você pode concluir ou cancelar o pedido',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(height: 8),
                                        Container(
                                            height: 1,
                                            color: ColorSet.grayLine),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: TextButton(
                                                  onPressed: () {
                                                    Navigator.of(dialogContext)
                                                        .pop();
                                                    context
                                                        .read<BuyerMenuBloc>()
                                                        .add(const BuyerMenuEvent
                                                            .onCartTapped());
                                                  },
                                                  child: const Text(
                                                      'Ir para o carrinho',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: ColorSet
                                                              .grayDark))),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            errorInsertingInCart: (errorInsertingInCart) =>
                                EasyLoading.showError(
                                    'Erro ao inserir produto no carrinho',
                                    duration: const Duration(seconds: 1)),
                            orElse: () {});
                      }
                    }, (r) => null));

            if (state.showInserted) {
              EasyLoading.showSuccess('Produto inserido com sucesso!',
                  duration: const Duration(seconds: 2));
            }

            if (state.back) {
              context.read<BuyerMenuBloc>().add(const BuyerMenuEvent.started());
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
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
                                  child:
                                      Center(child: Text(_product.name ?? '')),
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
                            _product.name ?? '',
                            style: const TextStyle(
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
                              style: const TextStyle(
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text:
                                        '${_product.quantity} ${_product.unitMeasure}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.normal))
                              ])),
                          Text.rich(TextSpan(
                              text: 'Embalagem: ',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: _product.advertisement?.deliveryAt
                                        .getDateAndMonthName(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Container(
                                      color: ColorSet.grayRoundedBackground,
                                      child: Center(
                                        child: TextFormField(
                                          controller: textController,
                                          validator: (_) => context
                                              .read<ProductPageBloc>()
                                              .state
                                              .reservationQuantity
                                              .value
                                              .fold(
                                                  (l) => l.maybeMap(
                                                      invalidReservationQuantity:
                                                          (_) =>
                                                              'Quantidade inválida',
                                                      orElse: () => null),
                                                  (r) => null),
                                          onChanged: (value) {
                                            context.read<ProductPageBloc>().add(
                                                ProductPageEvent.ammountChanged(
                                                    value));
                                          },
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Quantidade: -',
                                              hintStyle: TextStyle(
                                                  color: ColorSet.gray2)),
                                          style: const TextStyle(
                                            fontSize: 20,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    color: ColorSet.green1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Flexible(
                                          child: Text(
                                            'Horário para entrega: Combinar com o vendedor',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SvgPicture.asset(
                                          'assets/whatsapp.svg',
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            MaterialButton(
                              onPressed: () {
                                if (context
                                    .read<ProductPageBloc>()
                                    .state
                                    .reservationQuantity
                                    .isValid()) {
                                  context.read<ProductPageBloc>().add(
                                      ProductPageEvent.onBtnReservationTap(
                                          _product));
                                }
                              },
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    color: context
                                            .read<ProductPageBloc>()
                                            .state
                                            .reservationQuantity
                                            .isValid()
                                        ? ColorSet.green1
                                        : ColorSet.gray2,
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
                    ),
                    const SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text.rich(TextSpan(
                              text: 'Combine a entrega ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.green1),
                              children: [
                                TextSpan(
                                    text:
                                        ' Converse com o vendedor e combinem o horário para retirar sua compra.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black))
                              ])),
                          SizedBox(
                            height: 10,
                          ),
                          Text.rich(TextSpan(
                              text: 'Horário com o vendedor ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.green1),
                              children: [
                                TextSpan(
                                    text:
                                        'Você vai escolher o horário para retirar a compra com o vendedor',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black))
                              ])),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(height: 1, color: ColorSet.grayLine),
                    const SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child:
                          /*Advertiser(
                  isSearch: true,
                )*/
                          Visibility(
                        visible: _product.advertisement != null,
                        child: SizedBox(
                          height: 230,
                          width: double.infinity,
                          child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                                  _product.advertisement?.products.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => ProductPage(
                                            _product.advertisement!
                                                .products[index]),
                                      ));
                                    },
                                    child: ProductAdvertisement(_product
                                        .advertisement!.products[index]));
                              }),
                        ),
                      ),
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
                        children: const [
                          Text(
                            'O que você precisa saber sobre esse produto:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text('- Descição'),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Outros produtos anunciados pelo vendedor:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // SingleAdvertisement(product.advertisement!)
                        ],
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
