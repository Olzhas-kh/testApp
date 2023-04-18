import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loading_widget.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';
import 'package:narxoz/src/feautures/home/data/model/verification_response_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/my_application_cubit.dart';

class MyApplicationPage extends StatefulWidget {
  const MyApplicationPage({super.key});

  @override
  State<MyApplicationPage> createState() => _MyApplicationPageState();
}

class _MyApplicationPageState extends State<MyApplicationPage> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: const Center(
        child: CustomLoadingWidget(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<MyApplicationCubit, MyApplicationState>(
            listener: (context, state) {
              state.maybeWhen(
                loadingState: () => context.loaderOverlay.show(),
                errorState: (message) {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        // title: const Text('Разработка'),
                        content: Text(
                          message,
                          style: AppTextStyles.gilroy16w500,
                        ),

                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text(
                              context.appLocale.clearly,
                              style: AppTextStyles.gilroy16w500,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                },
                loadedState: (
                  VerificationResponseDTO verificationResponse,
                  int orderId,
                ) {
                  context.loaderOverlay.hide();

                  if (verificationResponse.paymentStatus ?? false) {
                    if (context.appBloc.isAuthenticated) {
                      context.router.push(
                        PreparationPaymentRoute(
                          orderId: orderId,
                          verificationResponse: verificationResponse,
                        ),
                      );
                    } else {
                      // without token
                      context.router.push(
                        PreparationRouteWithoutToken(
                          verificationResponse: verificationResponse,
                          orderId: orderId,
                        ),
                      );
                    }
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        // title: const Text('Разработка'),
                        content: Text(
                          '${verificationResponse.message}',
                          style: AppTextStyles.gilroy16w500,
                        ),

                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text(
                              context.appLocale.clearly,
                              style: AppTextStyles.gilroy16w500,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
                orElse: () {
                  context.loaderOverlay.hide();
                },
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  CustomAppBar(
                    onTap: () {
                      context.router.pop();
                    },
                    text: context.appLocale.myApplication,
                    isSafeArea: true,
                  ),
                  Expanded(
                    child: ListView(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 20),
                      children: [
                        Text(
                          context.appLocale.writeTheApplicationNumber,
                          style: AppTextStyles.gilroy16w500,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          controller: numberController,
                          hintText: context.appLocale.applicationNumber,
                          maxLines: 1,
                          validator: notEmptyValidator,
                          borderRadius: 12,
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 30),
          child: CustomButton(
            height: 48,
            body: Text(
              context.appLocale.check,
              style: AppTextStyles.gilroy16w600White,
            ),
            onClick: () {
              final int? orderId = int.tryParse(numberController.text);
              if (orderId != null) {
                BlocProvider.of<MyApplicationCubit>(context).checkApplication(
                  orderId: orderId,
                );
              }
            },
            style: redButtonStyle(elevation: 1),
          ),
        ),
      ),
    );
  }
}
