// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/core/widgets/loading.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/notifications/api/models/notification.dart';
import 'package:narxoz/src/feautures/notifications/bloc/notification_bloc.dart';
import 'package:narxoz/src/feautures/notifications/widget/widgets/notification_item_widget.dart';

@immutable
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  String _dateFormat(String value) =>
      DateFormat('dd-MM-yyyy').format(DateTime.parse(value));

  @override
  void initState() {
    BlocProvider.of<NotificationBloc>(context)
        .add(const NotificationEvent.getNotificationHiveBox());
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                isSafeArea: true,
                text: 'Уведомления',
                onTap: () => context.router.pop(),
              ),
              Expanded(
                child: BlocBuilder<NotificationBloc, NotificationState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => const Loading(),
                    errorOpenHiveBox: (message) => Center(
                      child: Text(message),
                    ),
                    successNotificationHiveBox: (box) =>
                        ValueListenableBuilder<Box<NotificationEntity>>(
                      valueListenable: box.listenable(),
                      builder: (context, box, _) => box.values.isEmpty
                          ? const Center(
                              child: Text(
                                'Уведомлений пока нет!',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    reverse: true,
                                    children: [
                                      GroupedListView<NotificationEntity,
                                          String>(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        reverse: true,
                                        elements: box.values
                                            .toList()
                                            .cast<NotificationEntity>(),
                                        groupBy: (NotificationEntity element) =>
                                            element.createdAt.substring(0, 10),
                                        order: GroupedListOrder.DESC,
                                        groupSeparatorBuilder: (String value) =>
                                            Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            _dateFormat(value),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: AppColors.kGray,
                                            ),
                                          ),
                                        ),
                                        itemBuilder: (ctx, e) =>
                                            NotificationItemWidget(
                                          e: e,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25),
                              ],
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
