import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/buyer/product/product_page_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/cart/cart_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertiser.dart';
import 'package:conectacampo/presentation/buyer/widgets/product_advertisement.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/util/photo_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  final AdProduct _adProduct;

  const ProductPage(this._adProduct);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return BlocProvider<ProductPageBloc>(
      create: (context) => getIt()..add(ProductPageEvent.started(_adProduct)),
      child: BlocConsumer<ProductPageBloc, ProductPageState>(
          listener: (context, state) async {
        final productPageBloc = context.read<ProductPageBloc>();
        final buyerMenuBloc = context.read<BuyerMenuBloc>();
        if (state.openCart) {
          await Navigator.of(context, rootNavigator: true)
              .push(MaterialPageRoute(
            builder: (context) => const CartPage(),
          ));
          buyerMenuBloc.add(const BuyerMenuEvent.started());
          productPageBloc.add(ProductPageEvent.started(state.product));
        }

        productPageBloc.state.reservationItemFailureOrSuccess?.fold((l) => null,
            (r) {
          textController.text = r.quantity.toString();
          textController.selection = TextSelection.fromPosition(
              TextPosition(offset: textController.text.length));
        });

        state.reservationItemFailureOrSuccess?.fold((l) {
          if (state.showErrorMsg) {
            l.maybeMap(
              anotherSellerInCart: (anotherSellerInCart) => showDialog<String>(
                context: context,
                builder: (BuildContext dialogContext) => Dialog(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
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
                      const SizedBox(
                        height: 8,
                      ),
                      const Center(
                        child: Text(
                            'Há produtos de outro vendedor ou de outra feira em seu carrinho!',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Center(
                        child: SizedBox(
                          width: 180,
                          child: Text(
                            'Você pode concluir ou cancelar o pedido',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(height: 1, color: ColorSet.grayLine),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(dialogContext).pop();
                              context.read<BuyerMenuBloc>().add(
                                    const BuyerMenuEvent.onCartTapped(),
                                  );
                            },
                            child: const Text(
                              'Ir para o carrinho',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.grayDark,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              errorInsertingInCart: (errorInsertingInCart) =>
                  EasyLoading.showError('Erro ao inserir produto no carrinho',
                      duration: const Duration(seconds: 1)),
              orElse: () {},
            );
          }
        }, (r) => null);
      }, builder: (context, state) {
        return Scaffold(
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
                                child: Center(
                                    child: Text(state.product?.name ?? '')),
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
                              Text.rich(TextSpan(
                                  text: 'Produtos e Retirada em: ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: state.place?.name ?? '',
                                      style: const TextStyle(
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
                    padding: const EdgeInsets.fromLTRB(16, 44, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.product?.name ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: ColorSet.grayRoundedBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2.0),
                                ),
                              ),
                              child: Text(
                                state.product?.kind ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorSet.gray2,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: ColorSet.grayRoundedBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2.0),
                                ),
                              ),
                              child: Text(
                                state.product?.rating ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorSet.gray2,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                  color: ColorSet.grayRoundedBackground,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(2.0),
                                  )),
                              child: Text(
                                state.product?.unitMeasure ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorSet.gray2,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 170,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: _adProduct.images.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(MaterialPageRoute(
                                            builder: (context) => PhotoViewer(
                                                i.originalAvatar.getOrCrash()),
                                          ));
                                        },
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              i.mediumAvatar.getOrCrash(),
                                          fit: BoxFit.cover,
                                          height: 170,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(TextSpan(
                            text: 'Disponível(is): ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      '${state.product?.quantity ?? ''} ${state.product?.unitMeasure ?? ''}(s)',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal))
                            ])),
                        Text.rich(TextSpan(
                            text: 'Embalagem: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      state.product?.unitMeasure ?? '' + '(s)',
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
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Entrega para: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: state.product?.advertisement?.deliveryAt
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
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                  child: (state.product?.quantity ?? 0) <= 0
                                      ? const Padding(
                                        padding:  EdgeInsets.all(8.0),
                                        child:  Text('Produto indisponível'),
                                      )
                                      : TextFormField(
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
                                                ProductPageEvent.amountChanged(
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
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        MaterialButton(
                          onPressed: () async {
                            await openWhatsapp(state.product?.advertisement
                                    ?.seller.phoneNumber ??
                                '');
                          },
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
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
                                  const ProductPageEvent.onBtnReservationTap());
                            }
                          },
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
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
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Visibility(
                      visible: state.product?.advertisement != null,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          const Text(
                              'Outros produtos anunciados pelo vendedor:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.gray2)),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 230,
                            width: double.infinity,
                            child: ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state
                                    .product?.advertisement?.products.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                      onTap: () async {
                                        final product = state.product;
                                        if (product != null) {
                                          await Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) => ProductPage(
                                                product.advertisement!
                                                    .products[index]),
                                          ));
                                          context.read<BuyerMenuBloc>().add(
                                              const BuyerMenuEvent
                                                  .produtDetailsClosed());
                                        }
                                      },
                                      child: ProductAdvertisement(state.product!
                                          .advertisement!.products[index]));
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        if (state.product?.observation != null &&
                            state.product!.observation!.isNotEmpty)
                          const Text(
                            'O que você precisa saber sobre esse produto:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorSet.gray2,
                            ),
                          ),
                        const SizedBox(height: 20),
                        if (state.product?.observation != null &&
                            state.product!.observation!.isNotEmpty)
                          Text(state.product!.observation!),
                        if (state.product?.advertisement != null)
                          Visibility(
                              child: ListView(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Informações sobre o vendedor:',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.gray2),
                              ),
                              const SizedBox(height: 10),
                              Advertiser(
                                  isSearch: true,
                                  seller: state.product!.advertisement!.seller),
                              const SizedBox(height: 10),
                              MaterialButton(
                                onPressed: () async {
                                  await openWhatsapp(state.product!
                                          .advertisement!.seller.phoneNumber ??
                                      '');
                                },
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
                                              'Se preferir, fale direto com o vendedor',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
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
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Entrar no grupo do vendedor',
                                    style: TextStyle(
                                        color: ColorSet.green2,
                                        decoration: TextDecoration.underline),
                                  ))
                            ],
                          )),
                        const SizedBox(height: 50)
                      ],
                    ),
                  )
                ],
              ),
            ));
      }),
    );
  }
}
