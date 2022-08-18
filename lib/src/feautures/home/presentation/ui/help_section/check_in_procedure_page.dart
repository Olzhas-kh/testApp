import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';

class CheckInProcedurePage extends StatelessWidget {
  final String header;
  final String text;
  const CheckInProcedurePage({
    required this.header,
    required this.text,
    super.key,
  });

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
              text: context.appLocale.checkInProcedure,
              isSafeArea: true,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Text(
                    header,
                    style: AppTextStyles.gilroy20w600,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    text,
                    style: AppTextStyles.gilroy20w500,
                  ),
                ],
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
