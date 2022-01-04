import 'package:conectacampo/application/notification/notifications_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/reservation/reservation_facade.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';

import 'notification_helper.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage(this.isBuyer);

  final bool isBuyer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isBuyer ? ColorSet.green1 : ColorSet.brown1,
        title: const Text('Notificações'),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<NotificationsBloc>()..add(const NotificationsEvent.started()),
        child: BlocConsumer<NotificationsBloc, NotificationsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.notifications?.fold(
                  (l) => const Center(
                    child: Text('Erro. Tente novamente mais tarde'),
                  ),
                  (r) => r.isEmpty
                      ? const Center(
                          child: Text('Ainda não há nenhuma notificação'))
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                          child: ListView.separated(
                            itemBuilder: (context, index) => ListTile(
                              title: Text(r[index].title),
                              subtitle: Text(
                                '${r[index].message}\n\n${r[index].createdAt.getHourDateAndMonthName()}',
                              ),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () async {
                                final reservation =
                                    await ReservationFacade().getReservation(
                                  r[index].notificatificable.id,
                                );
                                final kind = r[index].kind;
                                reservation.fold((l) => null, (r) {
                                  openNotification(
                                    context,
                                    ReservationToOpen(kind, r),
                                  );
                                });
                              },
                            ),
                            itemCount: r.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                          ),
                        ),
                ) ??
                const Center(
                  child: CircularProgressIndicator(),
                );
          },
        ),
      ),
    );
  }
}
