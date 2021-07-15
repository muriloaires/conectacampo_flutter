import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupPage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const GroupPage(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) => SafeArea(
                child: Scaffold(
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: BlocConsumer<GroupBloc, GroupState>(
                      listener: (context, state) {
                        if (state.loading) {
                          EasyLoading.show();
                        } else {
                          EasyLoading.dismiss();
                        }
                      },
                      builder: (context, state) =>
                          state.optionOfGrousAdsSuccessOrFailure.fold(
                              () => Container(),
                              (a) => a.fold(
                                  (l) => const Text('Erro'),
                                  (r) => r.isEmpty
                                      ? const SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(
                                                'Não anúncios em seus grupos'),
                                          ),
                                        )
                                      : SingleChildScrollView(
                                          child: AdvertisementList(
                                              false,
                                              r
                                                  .map((e) =>
                                                      UIAdvertisement(true, e))
                                                  .toList()),
                                        ))),
                    ),
                  ),
                ),
              )),
    );
  }
}
