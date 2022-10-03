import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/tasks_cubit.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  void initState() {
    BlocProvider.of<TasksCubit>(context).getObjects();
    super.initState();
  }

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
              text: context.appLocale.tasksAndAssessments,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocBuilder<TasksCubit, TasksState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<TaskDTO> objects) {
                      return ListView.separated(
                        itemCount: objects.length,
                        padding: const EdgeInsets.all(25),
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {
                                  context.router.push(AssessmentsPageRoute(assessment: objects[index]));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    objects[index].name ?? context.appLocale.notSpecified,
                                    style: AppTextStyles.gilroy15w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
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
