import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/home/data/model/education_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/choose_edu_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_card.dart';

class ChooseEduPage extends StatefulWidget {
  const ChooseEduPage({super.key});

  @override
  State<ChooseEduPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ChooseEduPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ChooseEduCubit>(context).getEducationDegrees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: SafeArea(
        child: Column(
          children: [
            ApplicationAppBar(
              onTap: () {
                context.router.pop();
              },
              text: context.appLocale.applicationSubmission,
              isSafeArea: true,
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: BlocConsumer<ChooseEduCubit, ChooseEduState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      errorState: (String message) {
                        buildErrorCustomSnackBar(context, message);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      degreesState: (List<EducationDTO> degrees) {
                        return ListView.separated(
                          itemCount: degrees.length,
                          itemBuilder: (context, index) {
                            return ApplicationCard(
                              title: '${degrees[index].name}',
                              // body:
                              //     '${context.appLocale.numberOfAvailableSeats}: ${degrees[index].availableSeatsCount}',
                              onTap: () {
                                BlocProvider.of<ChooseEduCubit>(context).getEducationCategories(
                                  degreeId: degrees[index].id,
                                );
                              },
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 30),
                        );
                      },
                      categoriesState: (List<EducationDTO> categories) {
                        return ListView.separated(
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return ApplicationCard(
                              title: '${categories[index].name}',
                              titleContent:
                                  categories[index].description == null || categories[index].description!.isEmpty
                                      ? null
                                      : categories[index].description,
                              body: '${context.appLocale.location}: ${categories[index].dormitoryName}'
                                  '${categories[index].availableSeatsCount == null || categories[index].availableSeatsCount == 0 ? '\n${context.appLocale.thereAreNoSeats}' : ""}',
                              onTap: () {
                                if (categories[index].availableSeatsCount == null ||
                                    categories[index].availableSeatsCount == 0) {
                                  buildErrorCustomSnackBar(context, context.appLocale.thereAreNoSeats);
                                  return;
                                }

                                if (context.appBloc.isAuthenticated) {
                                  context.router.push(
                                    ApplicationPageRoute(
                                      catId: categories[index].id,
                                    ),
                                  );
                                } else {
                                  // without token
                                  context.router.push(
                                    ApplicationRouteWithoutToken(
                                      catId: categories[index].id,
                                    ),
                                  );
                                }
                              },
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 30),
                        );
                      },
                      orElse: () {
                        return const Center(
                          child: kWaveLoader,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
