import 'package:conectacampo/application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart';
import 'package:conectacampo/application/seller/reservation/seller_reservation_bloc.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/reservation/edit_reservation_item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EditReservationPage extends StatelessWidget {
  final Reservation reservation;

  const EditReservationPage(this.reservation);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SellerReservationBloc>()
        ..add(SellerReservationEvent.started(reservation)),
      child: BlocConsumer<SellerReservationBloc, SellerReservationState>(
          listener: (context, state) {
        if (state.finishing) {
          EasyLoading.show(status: 'Atualizando');
        } else {
          EasyLoading.dismiss();
        }

        if (state.finished) {
          Navigator.of(context).pop();
        }
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: ColorSet.brown1,
              title: const Text(
                'Anunciar',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Resumo do anúncio',
                      style: TextStyle(
                          color: ColorSet.brown1, fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (reservation.productReservations.isEmpty)
                    const Center(child: Text('Você removeu todos os produtos'))
                  else
                    ListView.separated(
                        itemBuilder: (context, index) =>
                            ReservationProductWidget(
                                product: reservation.productReservations[index],
                                index: index),
                        separatorBuilder: (context, index) => Container(
                              height: 1,
                              color: ColorSet.grayLine,
                            ),
                        itemCount: reservation.productReservations.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 4),
                    child: Text.rich(TextSpan(text: 'Entrega dia: ', children: [
                      TextSpan(
                          text: reservation.createdAt?.getDateAndMonthName(),
                          style: const TextStyle(
                              color: ColorSet.brown1,
                              fontWeight: FontWeight.bold))
                    ])),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(20, 4, 0, 0),
                  //   child: Text.rich(
                  //       TextSpan(text: 'Local de entrega: ', children: [
                  //     TextSpan(
                  //         text: state.optionOfReservation.fold(() => null, (a) => a)?.,
                  //         style: const TextStyle(
                  //             color: ColorSet.brown1,
                  //             fontWeight: FontWeight.bold))
                  //   ])),
                  // ),
                  const SizedBox(height: 20),
                  MaterialButton(
                      onPressed: () {
                        context
                            .read<SellerReservationBloc>()
                            .add(const SellerReservationEvent.finish());
                      },
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                            color: ColorSet.brown1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Center(
                          child: Text(
                            'Alterar reserva',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ReservationProductWidget extends StatelessWidget {
  final ProductReservation product;
  final int index;

  const ReservationProductWidget({required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SellerReservationBloc, SellerReservationState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      color: ColorSet.backgroundInput,
                      width: 75,
                      height: 75,
                      child: product.adProduct.images.first.mediumAvatar
                              .getOrCrash()
                              .isEmpty
                          ? Image.asset('assets/placeholder.png')
                          : Image.network(
                              product.adProduct.images.first.mediumAvatar
                                  .getOrCrash(),
                              fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text('Produto'),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if ((state.reservation?.productReservations
                                            .length ??
                                        0) >
                                    1)
                                  IconButton(
                                      onPressed: () {
                                        context
                                            .read<SellerReservationBloc>()
                                            .add(SellerReservationEvent
                                                .itemRemoved(index));
                                      },
                                      icon: const Icon(Icons.delete_outline)),
                                IconButton(
                                    onPressed: () async {
                                      final result = await Navigator.of(context)
                                          .push<int>(MaterialPageRoute(
                                              builder: (context) =>
                                                  EditReservationItemPage(
                                                      product)));

                                      if (result != null) {
                                        product.copyWith(quantity: result);
                                        context
                                            .read<SellerReservationBloc>()
                                            .add(SellerReservationEvent
                                                .quantityEdited(index, result));
                                      }
                                    },
                                    icon: const Icon(Icons.edit)),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product.adProduct.name ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(
                                product.adProduct.unitMeasure,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.grayDark),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(product.adProduct.rating,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.grayDark)),
                            ),
                            const SizedBox(width: 2),
                            Container(
                              padding: const EdgeInsets.all(2),
                              color: ColorSet.gray10,
                              child: Text(
                                  '${product.quantity.toString()} item(s)',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.grayDark)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
