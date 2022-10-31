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
import 'package:narxoz/src/feautures/app/widgets/custom/scroll_wrapper.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/hostel_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/images_widget.dart';

class HostelPage extends StatefulWidget {
  const HostelPage({super.key});

  @override
  State<HostelPage> createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  @override
  void initState() {
    BlocProvider.of<HostelCubit>(context).getInfo();
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
              text: context.appLocale.hostel,
              isSafeArea: true,
            ),
            Expanded(
              child: ScrollWrapper(
                child: Column(
                  children: [
                    BlocConsumer<HostelCubit, HostelState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          errorState: (String message) {
                            buildErrorCustomSnackBar(context, message);
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          loadedState: (HostelInfoDTO hostelInfo) {
                            return Column(
                              children: [
                                ImagesWidget(
                                  images: hostelInfo.images ?? [],
                                ),
                                const SizedBox(height: 26),
                                Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 80,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          '${context.appLocale.termsOfSettlement}:',
                                          style: AppTextStyles.gilroy18w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          '${hostelInfo.settlmentStartsAt} - ${hostelInfo.settlmentEndsAt}',
                                          style: AppTextStyles.gilroy18w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          DecoratedBox(
                            decoration: const BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                            ),
                            child: CustomButton(
                              height: 48,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.appLocale.helpSection,
                                    style: AppTextStyles.gilroy16w600,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ],
                              ),
                              onClick: () {
                                if (context.appBloc.isAuthenticated) {
                                  context.router.push(const HelpSectionPageRoute());
                                } else {
                                  context.router.push(const HelpSectionRouteWithoutToken());
                                }
                              },
                              style: whiteButtonStyle(),
                            ),
                          ),
                          const SizedBox(height: 19),
                          DecoratedBox(
                            decoration: const BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                            ),
                            child: CustomButton(
                              height: 48,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.appLocale.myApplication,
                                    style: AppTextStyles.gilroy16w600,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ],
                              ),
                              onClick: () {
                                if (context.appBloc.isAuthenticated) {
                                  context.router.push(const MyApplicationPageRoute());
                                } else {
                                  context.router.push(const MyApplicationRouteWithoutToken());
                                }
                              },
                              style: whiteButtonStyle(),
                            ),
                          ),
                          const SizedBox(height: 19),
                          CustomButton(
                            height: 48,
                            body: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  context.appLocale.submitAnApplication,
                                  style: AppTextStyles.gilroy16w600White,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                            onClick: () {
                              if (context.appBloc.isAuthenticated) {
                                context.router.push(const ChooseEduPageRoute());
                              } else {
                                context.router.push(const ChooseEduRouteWithoutToken());
                              }
                            },
                            style: redButtonStyle(elevation: 1),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
