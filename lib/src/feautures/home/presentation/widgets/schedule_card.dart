import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/src/build_context_ext.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/lesson_card.dart';

class ScheduleCard extends StatelessWidget {
  final ScheduleDTO schedule;
  const ScheduleCard({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          schedule.week ?? context.appLocale.notSpecified,
          style: AppTextStyles.gilroy15w500,
        ),
        const SizedBox(height: 13),
        if (schedule.data != null)
          ListView.separated(
            itemCount: schedule.data!.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => LessonCard(lesson: schedule.data![index]),
            separatorBuilder: (context, index) => const SizedBox(height: 14),
          ),
      ],
    );
  }
}
