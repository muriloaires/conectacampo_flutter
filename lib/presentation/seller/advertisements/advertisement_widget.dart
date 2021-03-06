import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/seller/adveretisements/seller_advertisements_bloc.dart';
import 'package:conectacampo/application/seller/adveretisements/single_advertisement/bloc/single_advertisement_bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AdvertisementWidget extends StatelessWidget {
  final Advertisement advertisement;

  const AdvertisementWidget(this.advertisement, this.isExpanded);

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleAdvertisementBloc>(
      create: (context) => getIt()
        ..add(SingleAdvertisementEvent.started(advertisement, isExpanded)),
      child: BlocConsumer<SingleAdvertisementBloc, SingleAdvertisementState>(
          listener: (context, state) {
            if (state.canceling) {
              EasyLoading.show(status: '');
            } else {
              EasyLoading.dismiss();
            }

            state.optionOfDeleteAdFailureOrSuccess.fold(
                () => null,
                (a) => a.fold(
                    (l) => null,
                    (r) => context
                        .read<SellerAdvertisementsBloc>()
                        .add(const SellerAdvertisementsEvent.started())));
          },
          builder: (context, state) => SizedBox(
                width: 300,
                child: BlocBuilder<SellerAdvertisementsBloc,
                    SellerAdvertisementsState>(
                  builder: (context, state2) {
                    return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Container(
                                height: 40,
                                color: ColorSet.green3,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                  child: Center(
                                    child: Text(
                                      'Feira do dia ${advertisement.deliveryAt.getDateAndMonthName()}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${advertisement.products.length} Produto(s)',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(height: 8),
                                      Text.rich(
                                        TextSpan(
                                          text:
                                              '${advertisement.meetingType}: ',
                                          children: [
                                            TextSpan(
                                              text: advertisement
                                                  .meetingTypeDescription,
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
                            ),
                            Visibility(
                                visible: context
                                    .read<SellerAdvertisementsBloc>()
                                    .state
                                    .someExpanded,
                                child: SizedBox(
                                  height: 210,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView(
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext
                                                      dialogContext) =>
                                                  Dialog(
                                                child: ListView(
                                                  shrinkWrap: true,
                                                  children: [
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 35,
                                                      backgroundColor:
                                                          Colors.red[800],
                                                      child: const Icon(
                                                        Icons.close,
                                                        size: 40,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Center(
                                                      child: Text(
                                                        'Cancelar feira',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    const Center(
                                                      child: Text(
                                                        'Voc?? deseja cancelar a feira?',
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Container(
                                                        height: 1,
                                                        color:
                                                            ColorSet.grayLine),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  dialogContext),
                                                          child: const Text(
                                                            'Voltar',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: ColorSet
                                                                  .grayDark,
                                                            ),
                                                          ),
                                                        ),
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                dialogContext);
                                                            context
                                                                .read<
                                                                    SingleAdvertisementBloc>()
                                                                .add(
                                                                  SingleAdvertisementEvent
                                                                      .onCancelAdPressed(
                                                                    advertisement,
                                                                  ),
                                                                );
                                                          },
                                                          child: const Text(
                                                            'Sim',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: ColorSet
                                                                  .grayDark,
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
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                50, 10, 50, 10),
                                            decoration: const BoxDecoration(
                                                color: ColorSet.red1Alpha,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: const Text('Cancelar Feira',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorSet.red1)),
                                          ),
                                        ),
                                        const Text('Itens',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: ColorSet.colorPrimaryGreen,
                                            )),

                                        ListView.builder(
                                          physics:
                                              const ClampingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (itemBuilder, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                '${advertisement.products[index].name} ??? ${advertisement.products[index].quantity} ${advertisement.products[index].unitMeasure}',
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            );
                                          },
                                          itemCount:
                                              advertisement.products.length,
                                        ),
                                        const SizedBox(height: 4),
                                        // const Text(
                                        //   'Alterar itens',
                                        //   style: TextStyle(
                                        //     color: ColorSet.colorPrimaryGreen,
                                        //     fontSize: 12,
                                        //     decoration: TextDecoration.underline,
                                        //   ),
                                        // ),
                                        // const SizedBox(height: 30),
                                        // MaterialButton(
                                        //   onPressed: () {
                                        //     context.read<SingleAdvertisementBloc>().add(
                                        //           SingleAdvertisementEvent
                                        //               .onCancelAdPressed(advertisement),
                                        //         );
                                        //   },
                                        //   child: Container(
                                        //     padding:
                                        //         const EdgeInsets.fromLTRB(50, 10, 50, 10),
                                        //     decoration: const BoxDecoration(
                                        //       color: ColorSet.brown1,
                                        //       borderRadius: BorderRadius.all(
                                        //         Radius.circular(20),
                                        //       ),
                                        //     ),
                                        //     child: const Text(
                                        //       'Duplicar Feira',
                                        //       textAlign: TextAlign.center,
                                        //       style: TextStyle(
                                        //         fontWeight: FontWeight.bold,
                                        //         color: Colors.white,
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                )),
                            Container(
                              height: 1,
                              color: ColorSet.gray10,
                            ),
                            InkWell(
                              onTap: () {
                                context.read<SingleAdvertisementBloc>().add(
                                    const SingleAdvertisementEvent
                                        .onItemExpandedPressed());

                                context.read<SellerAdvertisementsBloc>().add(
                                    SellerAdvertisementsEvent.someExpandedTap(
                                        !state2.someExpanded));
                              },
                              child: SizedBox(
                                height: 40,
                                width: 300,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Text(
                                        state2.someExpanded
                                            ? 'Itens'
                                            : 'Ver itens',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 20, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          state2.someExpanded
                                              ? Icons.expand_less
                                              : Icons.expand_more,
                                          size: 32,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              )),
    );
  }
}
