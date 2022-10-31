import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loading_widget.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/scroll_wrapper.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';
import 'package:narxoz/src/feautures/auth/presentation/bloc/sign_in_cubit.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _passwordVisible = true;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late final String? fcmToken;

  Future<void> getDeviceToken() async {
    fcmToken = await FirebaseMessaging.instance.getToken();
  }

  @override
  void initState() {
    getDeviceToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: const Center(
        child: CustomLoadingWidget(),
      ),
      child: Scaffold(
        body: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {
            state.maybeWhen(
              loadingState: () {
                context.loaderOverlay.show();
              },
              loadedState: (UserDTO user) {
                BlocProvider.of<AppBloc>(context).add(const AppEvent.logining());
              },
              errorState: (String message) {
                context.loaderOverlay.hide();
                // buildErrorCustomSnackBar(context, message);
              },
              orElse: () => context.loaderOverlay.hide(),
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: ScrollWrapper(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Column(
                      children: [
                        const Spacer(flex: 2),
                        Image.asset(
                          AppImages.narxozLogo,
                          // color: AppColors.kRedPrimary,
                          width: context.screenSize.width * 0.7,
                        ),
                        const Spacer(flex: 2),
                        CustomTextField(
                          controller: loginController,
                          hintText: context.appLocale.enterLogin,
                          maxLines: 1,
                          validator: notEmptyValidator,
                          borderRadius: 12,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.kGray1,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          isVisible: _passwordVisible,
                          controller: passwordController,
                          hintText: context.appLocale.enterPassword,
                          maxLines: 1,
                          validator: passwordRepeatValidator,
                          borderRadius: 12,
                        ),
                        const SizedBox(height: 20),
                        state.maybeWhen(
                          errorState: (String message) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                message,
                                style: AppTextStyles.rubik14w400Red,
                              ),
                            );
                          },
                          orElse: () => const SizedBox(),
                        ),
                        const SizedBox(height: 8),
                        const Spacer(flex: 3),
                        CustomButton(
                          height: 50,
                          body: Text(
                            context.appLocale.applyForAHostel,
                            style: AppTextStyles.gilroy19w600white,
                          ),
                          onClick: () {},
                          style: redButtonStyle(),
                        ),
                        const SizedBox(height: 19),
                        CustomButton(
                          height: 50,
                          body: Text(
                            context.appLocale.enter,
                            style: AppTextStyles.gilroy19w600white,
                          ),
                          onClick: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<SignInCubit>(context).signIn(
                                login: loginController.text,
                                password: passwordController.text,
                                deviceToken: fcmToken ?? '',
                              );
                            }
                          },
                          style: redButtonStyle(),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
