import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/notifications/api/models/notification.dart';

@immutable
class NotificationItemWidget extends StatelessWidget {
  final NotificationEntity e;

  const NotificationItemWidget({
    required this.e,
    super.key,
  });

  String _dateFormat(String value) =>
      DateFormat('HH:mm').format(DateTime.parse(value));

  double getProportionateScreenWidth(double inputWidth, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return (inputWidth / 375.0) * screenWidth;
  }

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 10),
            child: Image.asset(AppImages.narxozIcon, height: 40),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: getProportionateScreenWidth(78, context),
                top: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.kBg,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (e.image != '')
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(e.image),
                    )
                  else
                    const SizedBox.shrink(),
                  if (e.title != '')
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e.title,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  Text(
                    e.text,
                    textAlign: TextAlign.left,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      _dateFormat(e.time),
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: AppColors.kGray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
