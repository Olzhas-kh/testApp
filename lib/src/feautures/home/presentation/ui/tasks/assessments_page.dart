import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/assessment_cubit.dart';

class AssessmentsPage extends StatefulWidget {
  final TaskDTO assessment;
  const AssessmentsPage({
    super.key,
    required this.assessment,
  });

  @override
  State<AssessmentsPage> createState() => _AssessmentsPageState();
}

class _AssessmentsPageState extends State<AssessmentsPage> {
  @override
  void initState() {
    if (widget.assessment.name != null) {
      BlocProvider.of<AssessmentsCubit>(context).getAssessments(name: widget.assessment.name!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar.long(
              onTap: () {
                context.router.pop();
              },
              text: widget.assessment.name ?? context.appLocale.notSpecified,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocBuilder<AssessmentsCubit, AssessmentState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<TaskDTO> tasks) {
                      return ListView(
                        // itemCount: tasks.length,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                        children: [
                          Table(
                            border: TableBorder.all(),
                            children: tasks
                                .map(
                                  (e) => TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 13,
                                        ),
                                        child: Column(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Flexible(
                                                  flex: 3,
                                                  child: Text(
                                                    e.name ?? context.appLocale.notSpecified,
                                                    style: AppTextStyles.gilroy16w500,
                                                  ),
                                                ),
                                                if (e.grade != null)
                                                  Flexible(
                                                    child: Text(
                                                      e.grade ?? context.appLocale.notSpecified,
                                                      style: AppTextStyles.gilroy16w500,
                                                    ),
                                                  )
                                                else
                                                  const SizedBox(),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                if (e.unlocakAt != null)
                                                  Flexible(
                                                    child: Text(
                                                      e.unlocakAt ?? context.appLocale.notSpecified,
                                                      style: AppTextStyles.gilroy14w500Grey,
                                                    ),
                                                  )
                                                else
                                                  const SizedBox(),
                                                if (e.lockAt != null)
                                                  Flexible(
                                                    child: Text(
                                                      e.lockAt ?? context.appLocale.notSpecified,
                                                      style: AppTextStyles.gilroy14w500Grey,
                                                    ),
                                                  )
                                                else
                                                  const SizedBox(),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                        // itemBuilder: (context, index) => ScheduleCard(schedule: schedules[index]),
                        // separatorBuilder: (context, index) => const SizedBox(height: 14),
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
