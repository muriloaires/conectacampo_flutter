import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../buyer_main_page.dart';

class GroupPage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const GroupPage(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
                appBar: SearchWidget(),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlocListener<AdvertisementsBloc, AdvertisementsState>(
                    listener: (context, state) {
                      if (context
                          .read<AdvertisementsBloc>()
                          .state
                          .groupRemovalSuccess) {
                        context
                            .read<GroupBloc>()
                            .add(const GroupEvent.started());
                      }
                    },
                    child: BlocConsumer<GroupBloc, GroupState>(
                      listener: (context, state) {
                        if (state.openSearch) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) => SearchPage()));
                        }
                      },
                      builder: (context, state) =>
                          state.optionOfGroupsAdsSuccessOrFailure.fold(
                              () => Container(),
                              (a) => a.fold(
                                  (l) => const Text('Erro'),
                                  (r) => r.isEmpty
                                      ? const SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(
                                                'Não há anúncios em seus grupos'),
                                          ),
                                        )
                                      : RefreshIndicator(
                                          onRefresh: () async {
                                            context.read<GroupBloc>().add(
                                                const GroupEvent.started());
                                          },
                                          child: ListView(
                                              shrinkWrap: true,
                                              physics:
                                                  const ClampingScrollPhysics(),
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 20, 20, 20),
                                                  child: Text(
                                                    'Administrar Grupos',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorSet
                                                          .greenTextColor,
                                                    ),
                                                  ),
                                                ),
                                                AdvertisementList(
                                                    isSearch: false,
                                                    isGroup: true,
                                                    advertisements: r
                                                        .map((e) =>
                                                            UIAdvertisement(
                                                                true, e))
                                                        .toList())
                                              ]),
                                        ))),
                    ),
                  ),
                ),
              )),
    );
  }
}
