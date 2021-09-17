import 'package:conectacampo/application/buyer/cart/cart_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => getIt()..add(const CartEvent.started()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state.reservating) {
            EasyLoading.show(status: 'Criando reserva');
          } else {
            EasyLoading.dismiss();
          }

          state.optionOfReservationResponse.fold(() => null, (a) {
            showDialog<String>(
              context: context,
              builder: (BuildContext dialogContext) => Dialog(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Divider(),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red[400],
                      child: const Icon(
                        Icons.close,
                        size: 48,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(),
                    const Center(
                      child: Text('Reserva não efetuada',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Divider(height: 8),
                    const Center(
                      child: SizedBox(
                        width: 180,
                        child: Flexible(
                          child: Text(
                            'Alguns itens se encontram indisponíveis',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Divider(height: 8),
                    Container(height: 1, color: ColorSet.grayLine),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Ajustar pedido',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.grayDark))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          });

          state.optionOfreservationResultSuccessOrFailure.fold(
              () => null,
              (a) => a.fold((l) => null, (r) {
                    Navigator.of(context).pop(true);
                  }));
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Carrinho'),
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          bottomNavigationBar:
              state.itemsInCart.isEmpty ? null : CartBottomMenu(),
          body: state.itemsInCart.isEmpty
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: const Center(child: Text('Carrinho vazio')))
              : ListView(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => Container(
                        height: 1,
                        color: ColorSet.grayLine,
                      ),
                      itemCount: state.itemsInCart.length,
                      itemBuilder: (context, index) {
                        var showError = false;
                        AdProduct? product;
                        final errorList = state.optionOfReservationResponse
                            .fold(() => null, (a) => a.productReservations);
                        try {
                          if (errorList != null && errorList.isNotEmpty) {
                            product = errorList
                                .map((e) => e.adProduct)
                                .toList()
                                .where((element) =>
                                    element.id == state.itemsInCart[index].id)
                                .first
                                .toDomain();
                            showError = product.quantity <
                                state.itemsInCart[index].quantity;
                          } else {
                            product = state
                                .optionOfRemoteAdProductsFailureOrSuccess
                                .fold(
                                    () => null,
                                    (a) =>
                                        a.fold((l) => null, (r) => r[index]));
                          }
                        } catch (e) {}
                        return ReservationItemWidget(
                            state.itemsInCart[index], product, showError);
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Comprar mais produtos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorSet.colorPrimaryGreen,
                              decoration: TextDecoration.underline,
                            )))
                  ],
                ),
        ),
      ),
    );
  }
}

class CartBottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: ListView(
            shrinkWrap: true,
            children: [
              GestureDetector(
                onTap: () async {
                  await openWhatsapp(state.itemsInCart.first.sellerPhone);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Combinar entrega com ${state.itemsInCart.first.sellerName}',
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: ColorSet.green1)),
                    const SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/whatsapp.svg',
                      width: 18,
                      height: 18,
                      color: Colors.green[600],
                    )
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total de itens',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(state.itemsInCart.length.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16))
                ],
              ),
              Divider(),
              MaterialButton(
                onPressed: () {
                  context
                      .read<CartBloc>()
                      .add(const CartEvent.btnFinishPressed());
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: ColorSet.green1,
                  ),
                  child: const Center(
                    child: Text(
                      'Finalizar pedido',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class ReservationItemWidget extends StatelessWidget {
  const ReservationItemWidget(
      this.reservationItem, this.remoteProduct, this.showError);
  final ReservationItem reservationItem;
  final AdProduct? remoteProduct;
  final bool showError;

  @override
  Widget build(BuildContext context) {
    final available = remoteProduct?.quantity ?? 0;
    final availability = available > 1 ? 'Disponíveis' : 'Disponível';
    final TextEditingController textController =
        TextEditingController(text: reservationItem.quantity.toString());
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: reservationItem.image.isEmpty
                      ? Container()
                      : Image.network(
                          reservationItem.image,
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reservationItem.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Tipo: ${reservationItem.kind}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Classificação: ${reservationItem.rating}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    '${reservationItem.quantity} ${reservationItem.measurementUnit}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 1,
                    color: ColorSet.grayLine,
                  )
                ],
              )
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$available $availability',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color:
                              showError ? Colors.red : Colors.lightGreen[800])),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                      width: 60,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        controller: textController,
                        onChanged: (value) => context.read<CartBloc>().add(
                            CartEvent.quantityChanged(reservationItem, value)),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: ColorSet.green1),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(),
                        ),
                      ))
                ],
              ),
              IconButton(
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext dialogContext) => Dialog(
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
                              child: Text('Deseja excluir?',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Divider(height: 8),
                            const Center(
                              child: SizedBox(
                                width: 180,
                                child: Flexible(
                                  child: Text(
                                    'Tem certeza que você deseja excluir o item?',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(height: 8),
                            Container(height: 1, color: ColorSet.grayLine),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('Voltar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: ColorSet.grayDark))),
                                ),
                                Expanded(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        context.read<CartBloc>().add(
                                            CartEvent.onBtnDeleteTap(
                                                reservationItem));
                                      },
                                      child: const Text('Sim',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: ColorSet.grayDark))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete_outline_rounded)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Valor final combinar'),
                    const Text('com o vendedor'),
                    Text(
                      reservationItem.sellerName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
