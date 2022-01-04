import 'package:conectacampo/application/buyer/cart/cart_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/advertisement/advertisement_detail_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => getIt()..add(const CartEvent.started()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state.reservating) {
            EasyLoading.show(status: 'Criando reserva', dismissOnTap: true);
          } else {
            EasyLoading.dismiss();
          }

          state.optionOfReservationResponse.fold(() => null, (a) {
            String errorMessage = '';
            for (final error in a.errors ?? List<ErrorResponse>.empty()) {
              if (error.key
                  .contains('product_reservations.quantity_not_enough')) {
                errorMessage = 'Quantidade insuficiente';
              }
            }

            if (state.showDialogErrorItems) {
              showDialog<String>(
                context: context,
                builder: (BuildContext dialogContext) => Dialog(
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      const SizedBox(),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.red[400],
                        child: const Icon(
                          Icons.close,
                          size: 48,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Center(
                        child: Text(
                          'Reserva não efetuada',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: Text(
                          errorMessage,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(height: 1, color: ColorSet.grayLine),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Ajustar pedido',
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
              );
            }
          });

          state.optionOfreservationResultSuccessOrFailure.fold(
              () => null,
              (a) => a.fold((l) => null, (r) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext dialogContext) => Dialog(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            const Divider(),
                            const CircleAvatar(
                              radius: 35,
                              backgroundColor: ColorSet.green1,
                              child: Icon(
                                Icons.check,
                                size: 48,
                                color: Colors.white,
                              ),
                            ),
                            const Divider(),
                            const Center(
                              child: Text('Pedido efetuado com sucesso!',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Divider(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(dialogContext);
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                              '/buyer_main', (route) => false);
                                    },
                                    child: const Text('Ok',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: ColorSet.grayDark)))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
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
                      physics: const ClampingScrollPhysics(),
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
                                    (a) => a.fold((l) => null, (r) {
                                          final invertedList =
                                              r.reversed.toList();
                                          return invertedList[index];
                                        }));
                          }
                        } catch (e) {}
                        return ReservationItemWidget(
                            state.itemsInCart[index], product, showError);
                      },
                    ),
                    TextButton(
                      onPressed: () async {
                        final result =
                            await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdvertisementDetailPage(
                            state.itemsInCart.first.advertisementId,
                          ),
                        ));
                        context.read<CartBloc>().add(const CartEvent.started());
                      },
                      child: const Text(
                        'Comprar mais produtos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorSet.orange2,
                          decoration: TextDecoration.underline,
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
                child: Wrap(
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
    textController.selection = TextSelection.fromPosition(
        TextPosition(offset: textController.text.length));
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
              Flexible(
                child: Column(
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
                      '${reservationItem.quantity} ${reservationItem.measurementUnit}(s)',
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 1,
                      color: ColorSet.grayLine,
                    )
                  ],
                ),
              )
            ],
          ),
          const Divider(),
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
                        keyboardType:
                            const TextInputType.numberWithOptions(signed: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
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
              TextButton(
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
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const Divider(height: 8),
                          const Center(
                            child: SizedBox(
                              width: 180,
                              child: Text(
                                'Tem certeza que você deseja excluir o item?',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const Divider(height: 8),
                          Container(height: 1, color: ColorSet.grayLine),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () => Navigator.pop(dialogContext),
                                child: const Text(
                                  'Voltar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.grayDark,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(dialogContext);
                                  context.read<CartBloc>().add(
                                        CartEvent.onBtnDeleteTap(
                                          reservationItem,
                                        ),
                                      );
                                },
                                child: const Text(
                                  'Sim',
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
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Excluir',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Valor final a combinar'),
                    const Text('com o vendedor'),
                    Text(
                      reservationItem.sellerName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
