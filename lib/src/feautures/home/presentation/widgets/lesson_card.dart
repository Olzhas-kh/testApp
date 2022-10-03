import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/home/data/model/lesson_dto.dart';

class LessonCard extends StatelessWidget {
  final LessonDTO lesson;
  const LessonCard({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: AppDecorations.dropShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  lesson.timeFrom ?? context.appLocale.notSpecified,
                  style: AppTextStyles.gilroy15w500,
                ),
                Text(
                  lesson.timeTo ?? context.appLocale.notSpecified,
                  style: AppTextStyles.gilroy15w500,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lesson.name ?? context.appLocale.notSpecified,
                  style: AppTextStyles.gilroy15w500,
                ),
                const SizedBox(height: 8),
                Text(
                  lesson.typeOfActivity ?? context.appLocale.notSpecified,
                  style: AppTextStyles.gilroy13w500Grey,
                ),
                Text(
                  '${context.appLocale.typeOfActivity} ${lesson.audience ?? context.appLocale.notSpecified}',
                  style: AppTextStyles.gilroy13w500Grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
