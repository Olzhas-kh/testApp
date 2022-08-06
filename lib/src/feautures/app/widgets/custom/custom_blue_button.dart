import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class CustomBlueButton extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final double? height;
  final EdgeInsets? contentPadding;
  final Color? bgColor;
  final Color? textColor;
  const CustomBlueButton({
    super.key,
    this.onTap,
    required this.title,
    this.height,
    this.contentPadding,
    this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? AppColors.kAzure,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: height,
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.ts17w600
                  .copyWith(color: textColor ?? AppColors.kWhite),
            ),
          ),
        ),
      ),
    );
  }
}
