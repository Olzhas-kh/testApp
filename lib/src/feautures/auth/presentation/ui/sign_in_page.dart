import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/scroll_wrapper.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     _passwordVisible
                    //         ? Icons.visibility
                    //         : Icons.visibility_off,
                    //     color: AppColors.kGray1,
                    //   ),
                    //   onPressed: () {
                    //     setState(() {
                    //       _passwordVisible = !_passwordVisible;
                    //     });
                    //   },
                    // ),
                    // isVisible: _passwordVisible,
                    controller: loginController,
                    hintText: 'enter_login'.tr(),
                    maxLines: 1,
                    validator: passwordRepeatValidator,
                    borderRadius: 12,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
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
                    hintText: 'enter_password'.tr(),
                    maxLines: 1,
                    validator: passwordRepeatValidator,
                    borderRadius: 12,
                  ),
                  const Spacer(flex: 3),
                  CustomButton(
                    height: 50,
                    body: const Text(
                      'apply_for_a_hostel',
                      style: AppTextStyles.gilroy19w600white,
                    ).tr(),
                    onClick: () {},
                    style: redButtonStyle(),
                  ),
                  const SizedBox(height: 19),
                  CustomButton(
                    height: 50,
                    body: const Text(
                      'enter',
                      style: AppTextStyles.gilroy19w600white,
                    ).tr(),
                    onClick: () {
                      BlocProvider.of<AppBloc>(context)
                          .add(const AppEvent.logining());
                    },
                    style: redButtonStyle(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
