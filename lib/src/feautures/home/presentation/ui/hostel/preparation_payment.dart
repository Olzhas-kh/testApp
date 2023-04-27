import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loading_widget.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/verification_response_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/dorm_card_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/my_application_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/accept_privacy_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/file_picker_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class PreparationPayment extends StatefulWidget {
  final VerificationResponseDTO verificationResponse;
  final int orderId;

  const PreparationPayment({
    required this.verificationResponse,
    required this.orderId,
    super.key,
  });

  @override
  State<PreparationPayment> createState() => _PreparationPaymentState();
}

class _PreparationPaymentState extends State<PreparationPayment> {
  bool hasCheque = false;
  File? cheque;
  // PlacementDTO? chosenPlacement;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchInBrowser(
    Uri url, {
    LaunchMode mode = LaunchMode.inAppWebView,
  }) async {
    if (!await launchUrl(
      url,
      mode: mode,
      // webViewConfiguration: WebViewConfiguration()
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: const Center(
        child: CustomLoadingWidget(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.appLocale.payment,
            style: AppTextStyles.gilroy20w500,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: BlocConsumer<DormCardCubit, DormCardState>(
              listener: (context, state) {
                state.maybeWhen(
                  loadingState: () => context.loaderOverlay.show(),
                  errorState: (String message) {
                    context.loaderOverlay.show();
                   buildErrorCustomSnackBar(context, message);
                  },
                  loadedState: (PaymentDTO? payment) async {
                    context.loaderOverlay.hide();

                    if (payment == null || payment.redirectUrl == null) {
                      context.router.push(SuccessPageRoute());
                    } else {
                      if (Platform.isIOS) {
                        await _launchInBrowser(Uri.parse(payment.redirectUrl!))
                            .then(
                              (value) => context.router.pop(),
                            )
                            .then((value) => BlocProvider.of<MyApplicationCubit>(context).fakeLoading());
                      } else {
                        await _launchInBrowser(
                          Uri.parse(
                            payment.redirectUrl!,
                          ),
                          mode: LaunchMode.externalApplication,
                        )
                            .then(
                              (value) => context.router.pop(),
                            )
                            .then((value) => BlocProvider.of<MyApplicationCubit>(context).fakeLoading());
                        // context.router.push(PaymentPageRoute(payment: payment));
                      }
                    }
                  },
                  orElse: () => context.loaderOverlay.hide(),
                );
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.verificationResponse.data?.fullName}',
                      style: AppTextStyles.gilroy20w500,
                    ),
                    // Flexible(
                    //   flex: hasCheque ? 3 : 2,
                    //   child: state.maybeWhen(
                    //     loadedState: (SeatsCountDTO seatsCount) {
                    //       if (seatsCount.placements == null) {
                    //         return const SizedBox();
                    //       }
                    //       return ListView.separated(
                    //         // shrinkWrap: true,
                    //         physics: const NeverScrollableScrollPhysics(),
                    //         itemCount: seatsCount.placements!.length,
                    //         itemBuilder: (context, index) {
                    //           return _ItemWidget(
                    //             isChosen: chosenPlacement?.id == seatsCount.placements?[index].id,
                    //             placement: seatsCount.placements![index],
                    //             callback: (p0) {
                    //               setState(() {
                    //                 chosenPlacement = p0;
                    //               });
                    //             },
                    //           );
                    //         },
                    //         separatorBuilder: (context, index) {
                    //           return const SizedBox(
                    //             height: 12,
                    //           );
                    //         },
                    //       );
                    //     },
                    //     orElse: () {
                    //       return const Center(
                    //         child: kWaveLoader,
                    //       );
                    //     },
                    //   ),
                    // ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          context.appLocale.paymentPerSemester,
                          style: AppTextStyles.gilroy20w500,
                        ),
                        Text(
                          '${widget.verificationResponse.data?.amount} ${context.appLocale.tenge}',
                          style: AppTextStyles.gilroy20w600Red,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
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
                    CustomButton(
                      height: 50,
                      body: Text(
                        hasCheque
                            ? context.appLocale.send
                            : context.appLocale.payTenge('${widget.verificationResponse.data?.amount}'),
                      ),
                      onClick: () {
                        // if (chosenPlacement == null) {
                        //   buildErrorCustomSnackBar(context, context.appLocale.chooseTheTypeOfPlacement);
                        //   return;
                        // }

                        if (hasCheque && cheque == null) {
                          buildErrorCustomSnackBar(context, 'Выберите чек');
                          return;
                        }

                        BlocProvider.of<DormCardCubit>(context).paymentDorm(
                          orderId: widget.orderId,
                          file: hasCheque ? cheque : null,
                        );
                      },
                      style: redButtonStyle(),
                    ),
                    const SizedBox(height: 30),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class _ItemWidget extends StatelessWidget {
//   final bool isChosen;
//   // final bool isActive;
//   final PlacementDTO placement;
//   final void Function(PlacementDTO) callback;
//   const _ItemWidget({
//     required this.isChosen,
//     required this.placement,
//     required this.callback,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: placement.availableSeatsCount != null && placement.availableSeatsCount! > 0
//               ? AppColors.kRedPrimary
//               : const Color(0xffC2C2C2),
//         ),
//       ),
//       child: Material(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(12),
//           onTap: placement.availableSeatsCount != null && placement.availableSeatsCount! > 0
//               ? () {
//                   callback(placement);
//                 }
//               : null,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 15,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       height: 20,
//                       width: 20,
//                       padding: const EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: const Color(0xff808080),
//                         ),
//                       ),
//                       child: isChosen
//                           ? Container(
//                               height: 10,
//                               width: 10,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: AppColors.kRedPrimary,
//                               ),
//                             )
//                           : const SizedBox(),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       '${placement.name}',
//                       style: AppTextStyles.gilroy16w500,
//                     ),
//                   ],
//                 ),
//                 if (placement.availableSeatsCount != null && placement.availableSeatsCount! > 0)
//                   Text(
//                     '${placement.availableSeatsCount} мест',
//                     style: AppTextStyles.gilroy16w500,
//                   )
//                 else
//                   const Text(
//                     'Мест нет',
//                     style: AppTextStyles.gilroy16w500,
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
