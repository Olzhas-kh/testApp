import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';

class SettlementConditionsPage extends StatelessWidget {
  final String text;
  const SettlementConditionsPage({
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
              text: context.appLocale.settlementConditions,
              isSafeArea: true,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
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
