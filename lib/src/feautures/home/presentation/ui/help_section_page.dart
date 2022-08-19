import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_cubit.dart';

class HelpSectionPage extends StatefulWidget {
  const HelpSectionPage({super.key});

  @override
  State<HelpSectionPage> createState() => _HelpSectionPageState();
}

class _HelpSectionPageState extends State<HelpSectionPage> {
  @override
  void initState() {
    final cubit = BlocProvider.of<HelpSectionCubit>(context);
    cubit.state.maybeWhen(
      loadedState: (List<HelpSectionDTO> sections) {},
      orElse: () {
        cubit.getHelpSections();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                context.router.pop();
              },
              text: context.appLocale.helpSection,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocConsumer<HelpSectionCubit, HelpSectionState>(
                listener: (context, state) {
                  state.whenOrNull(
                    errorState: (String message) {
                      buildErrorCustomSnackBar(context, message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<HelpSectionDTO> sections) {
                      return ListView.separated(
                        // shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 25)
                            .copyWith(top: 25),
                        itemCount: sections.length,
                        itemBuilder: (context, index) {
                          return DecoratedBox(
                            decoration: const BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                            ),
                            child: CustomButton(
                              height: 48,
                              body: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    sections[index].name,
                                    style: AppTextStyles.gilroy16w600,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ],
                              ),
                              onClick: () {
                                context.router.push(
                                  HelpSectionDetailPageRoute(
                                    id: sections[index].id,
                                  ),
                                );
                              },
                              style: whiteButtonStyle(),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 20);
                        },
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
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
