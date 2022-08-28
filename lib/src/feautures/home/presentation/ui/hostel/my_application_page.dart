import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';

class MyApplicationPage extends StatefulWidget {
  const MyApplicationPage({super.key});

  @override
  State<MyApplicationPage> createState() => _MyApplicationPageState();
}

class _MyApplicationPageState extends State<MyApplicationPage> {
  TextEditingController numberController = TextEditingController();

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
              text: context.appLocale.myApplication,
              isSafeArea: true,
            ),
            Expanded(
              child: ListView(
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
                  ),
                ],
              ),
            ),
          ],
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
          onClick: () {},
          style: redButtonStyle(elevation: 1),
        ),
      ),
    );
  }
}
