import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/home/data/model/lesson_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/schedule_cubit.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                context.router.pop();
              },
              text: context.appLocale.scheduleOfClasses,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocBuilder<ScheduleCubit, ScheduleState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<ScheduleDTO> schedules) {
                      return ListView.separated(
                        itemCount: schedules.length,
                        padding: const EdgeInsets.all(25),
                        itemBuilder: (context, index) => ScheduleCard(schedule: schedules[index]),
                        separatorBuilder: (context, index) => const SizedBox(height: 14),
                      );
                    },
                    errorState: (String message) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loadingState: () {
                      return const Center(
                        child: kWaveLoader,
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                  lesson.audience ?? context.appLocale.notSpecified,
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
