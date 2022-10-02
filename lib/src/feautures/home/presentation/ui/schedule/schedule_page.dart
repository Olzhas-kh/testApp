import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/schedule_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/schedule_card.dart';

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
