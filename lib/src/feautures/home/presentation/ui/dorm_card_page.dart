import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/placement_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/seats_count_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/dorm_card_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/dorm_card_verify_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/accept_privacy_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/file_picker_widget.dart';

class DormCardPage extends StatefulWidget {
  final int catId;
  final List<AnswerPayload> answers;
  final String gender;
  const DormCardPage({
    required this.answers,
    required this.catId,
    this.gender = 'male',
    super.key,
  });

  @override
  State<DormCardPage> createState() => _DormCardPageState();
}

class _DormCardPageState extends State<DormCardPage> {
  bool hasCheque = false;
  File? cheque;
  PlacementDTO? chosenPlacement;

  @override
  void initState() {
    BlocProvider.of<DormCardCubit>(context).getFreeSeatsCount(
      catId: widget.catId,
      gender: widget.gender,
    );
    BlocProvider.of<DormCardVerifyCubit>(context).resetState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.appLocale.dormCard,
          style: AppTextStyles.gilroy20w500,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: BlocConsumer<DormCardCubit, DormCardState>(
            listener: (context, state) {
              state.whenOrNull(
                errorState: (String message) {
                  buildErrorCustomSnackBar(context, message);
                },
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.appLocale.chooseTheTypeOfPlacement,
                    style: AppTextStyles.gilroy16w500,
                  ),
                  const SizedBox(height: 12),
                  Flexible(
                    flex: hasCheque ? 3 : 2,
                    child: state.maybeWhen(
                      loadedState: (SeatsCountDTO seatsCount) {
                        if (seatsCount.placements == null) {
                          return const SizedBox();
                        }
                        return ListView.separated(
                          // shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: seatsCount.placements!.length,
                          itemBuilder: (context, index) {
                            return _ItemWidget(
                              isChosen: chosenPlacement?.id == seatsCount.placements?[index].id,
                              placement: seatsCount.placements![index],
                              callback: (p0) {
                                setState(() {
                                  chosenPlacement = p0;
                                });
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 12,
                            );
                          },
                        );
                      },
                      orElse: () {
                        return const Center(
                          child: kWaveLoader,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.appLocale.paymentPerSemester,
                        style: AppTextStyles.gilroy20w500,
                      ),
                      state.maybeWhen(
                        loadedState: (seatsCount) => Text(
                          '${seatsCount.price} ${context.appLocale.tenge}',
                          style: AppTextStyles.gilroy20w600Red,
                        ),
                        orElse: () => const SizedBox(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  AcceptPrivacyWidget(
                    isAcceptedPrivacy: hasCheque,
                    callBack: (bool b) {
                      setState(() {
                        hasCheque = b;
                      });
                    },
                  ),
                  const SizedBox(height: 32),
                  if (hasCheque)
                    FilePickerWidget(
                      file: cheque,
                      callback: (File? lFile) {
                        setState(() {
                          cheque = lFile;
                        });
                      },
                    ),
                  const Spacer(),
                  BlocConsumer<DormCardVerifyCubit, DormCardVerifyState>(
                    listener: (context, innerState) {
                      innerState.whenOrNull(
                        errorState: (String message) => buildErrorCustomSnackBar(context, message),
                        loadedState: (PaymentDTO? payment) {
                          if (payment == null || hasCheque) {
                            context.router.push(
                              SuccessPageRoute(
                                hasCheque: true,
                              ),
                            );
                          } else {
                            context.router.push(PaymentPageRoute(payment: payment));
                          }
                        },
                      );
                    },
                    builder: (context, innerState) {
                      return CustomButton(
                        height: 50,
                        body: innerState.maybeWhen(
                          loadingState: () => const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                          orElse: () {
                            return state.maybeWhen(
                              loadedState: (SeatsCountDTO seatsCount) {
                                return Text(
                                  context.appLocale.payTenge('${seatsCount.price}'),
                                  style: AppTextStyles.gilroy16w600White,
                                );
                              },
                              orElse: () => const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                        onClick: innerState.maybeWhen(
                          loadingState: () => false,
                          orElse: () => true,
                        )
                            ? () {
                                if (chosenPlacement == null) {
                                  buildErrorCustomSnackBar(context, context.appLocale.chooseTheTypeOfPlacement);
                                  return;
                                }

                                if (hasCheque && cheque == null) {
                                  buildErrorCustomSnackBar(context, 'Выберите чек');
                                  return;
                                }

                                BlocProvider.of<DormCardVerifyCubit>(context).paymentDorm(
                                  catId: widget.catId,
                                  chequeFile: hasCheque ? cheque : null,
                                  answers: widget.answers,
                                  placementId: chosenPlacement!.id,
                                );
                              }
                            : null,
                        style: redButtonStyle(),
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final bool isChosen;
  // final bool isActive;
  final PlacementDTO placement;
  final void Function(PlacementDTO) callback;
  const _ItemWidget({
    required this.isChosen,
    required this.placement,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: placement.availableSeatsCount != null && placement.availableSeatsCount! > 0
              ? AppColors.kRedPrimary
              : const Color(0xffC2C2C2),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: placement.availableSeatsCount != null && placement.availableSeatsCount! > 0
              ? () {
                  callback(placement);
                }
              : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xff808080),
                        ),
                      ),
                      child: isChosen
                          ? Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.kRedPrimary,
                              ),
                            )
                          : const SizedBox(),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${placement.name}',
                      style: AppTextStyles.gilroy16w500,
                    ),
                  ],
                ),
                if (placement.availableSeatsCount != null && placement.availableSeatsCount! > 0)
                  Text(
                    '${placement.availableSeatsCount} мест',
                    style: AppTextStyles.gilroy16w500,
                  )
                else
                  const Text(
                    'Мест нет',
                    style: AppTextStyles.gilroy16w500,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
