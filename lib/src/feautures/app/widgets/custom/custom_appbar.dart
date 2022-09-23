import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isSafeArea;
  final bool isLong;
  const CustomAppBar({
    super.key,
    required this.onTap,
    required this.text,
    this.isSafeArea = false,
    this.isLong = false,
  });

  const CustomAppBar.long({
    super.key,
    required this.onTap,
    required this.text,
    this.isSafeArea = false,
    this.isLong = true,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15).copyWith(
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
            if (!isLong)
              const Spacer(flex: 6)
            else
              const SizedBox(
                width: 8,
              ),
            if (!isLong)
              Text( 
                text,
                style: AppTextStyles.gilroy20w500,
              )
            else
              Flexible(
                child: Text(
                  text,
                  style: AppTextStyles.gilroy20w500.copyWith(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                  ),
                ),
              ),
            if (!isLong) const Spacer(flex: 9),
          ],
        ),
      ),
    );
  }
}
