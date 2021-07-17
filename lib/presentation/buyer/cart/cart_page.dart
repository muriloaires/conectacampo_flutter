import 'package:conectacampo/application/buyer/cart/cart_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => getIt()..add(const CartEvent.started()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {},
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
          body: Column(children: [
            Flexible(
              flex: 4,
              child: ListView(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => Container(
                      height: 1,
                      color: ColorSet.grayLine,
                    ),
                    itemCount: state.itemsInCart.length,
                    itemBuilder: (context, index) {
                      return ReservationItemWidget(state.itemsInCart[index]);
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Comprar mais produtos',
                          style: TextStyle(
                              color: ColorSet.green1,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
            Flexible(flex: 1, child: CartBottomMenu()),
          ]),
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
          height: 150,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                onPressed: () {},
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
  const ReservationItemWidget(this.reservationItem);
  final ReservationItem reservationItem;

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Editar',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                      width: 60,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textController,
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
                    SvgPicture.asset(
                      'assets/whatsapp.svg',
                      width: 24,
                      height: 24,
                      color: ColorSet.green1,
                    ),
                    const Divider(),
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
