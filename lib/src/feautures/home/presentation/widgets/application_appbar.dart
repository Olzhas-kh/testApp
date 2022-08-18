import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_back_button.dart';

class ApplicationAppBar extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isSafeArea;
  const ApplicationAppBar({
    super.key,
    required this.onTap,
    required this.text,
    this.isSafeArea = false,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15).copyWith(
          top: isSafeArea ? 15 : context.screenSize.height * .07,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: BackButtonWidget(
                onTap: onTap,
              ),
            ),
            const Spacer(flex: 6),
            Column(
              children: [
                Text(
                  text,
                  style: AppTextStyles.gilroy20w500,
                ),
                const SizedBox(height: 10),
                Text(
                  context.appLocale.fillInTheData,
                  style: AppTextStyles.gilroy16w500,
                ),
              ],
            ),
            const Spacer(flex: 9),
          ],
        ),
      ),
    );
  }
}
