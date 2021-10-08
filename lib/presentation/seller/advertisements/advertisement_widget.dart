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

  const AdvertisementWidget(this.advertisement);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleAdvertisementBloc>(
      create: (context) =>
          getIt()..add(SingleAdvertisementEvent.started(advertisement)),
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
          builder: (context, state) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Container(
                      height: 40,
                      color: ColorSet.green3,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                        child: Center(
                          child: Text(
                            'Feira do dia ${advertisement.deliveryAt.getDateAndMonthName()}',
                            style: const TextStyle(color: Colors.white),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${advertisement.products.length} Produto(s)',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(height: 8),
                            Text.rich(
                              TextSpan(
                                text: '${advertisement.meetingType}: ',
                                children: [
                                  TextSpan(
                                    text: advertisement.meetingTypeDescription,
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
                  SizedBox(
                    child: Visibility(
                        visible: state.isItemVisible,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            children: [
                              const Text('Itens',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.colorPrimaryGreen,
                                  )),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (itemBuilder, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${advertisement.products[index].name} • ${advertisement.products[index].quantity} ${advertisement.products[index].unitMeasure}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  );
                                },
                                itemCount: advertisement.products.length,
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Alterar itens',
                                style: TextStyle(
                                  color: ColorSet.colorPrimaryGreen,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const SizedBox(height: 30),
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
                              MaterialButton(
                                onPressed: () {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext dialogContext) =>
                                        Dialog(
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.red[800],
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
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Center(
                                            child: Text(
                                              'Você deseja cancelar a feira?',
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Container(
                                              height: 1,
                                              color: ColorSet.grayLine),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              TextButton(
                                                onPressed: () =>
                                                    Navigator.pop(
                                                        dialogContext),
                                                child: const Text(
                                                  'Voltar',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold,
                                                    color: ColorSet.grayDark,
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(dialogContext);
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
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 10, 50, 10),
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
                            ],
                          ),
                        )),
                  ),
                  Container(
                    height: 1,
                    color: ColorSet.gray10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SingleAdvertisementBloc>().add(
                          const SingleAdvertisementEvent
                              .onItemExapandPressed());
                    },
                    child: SizedBox(
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            child: Text(
                              state.isItemVisible ? 'Itens' : 'Ver itens',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                state.isItemVisible
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
              ))),
    );
  }
}
