import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    required this.onTap,
    super.key,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: AppDecorations.backButtonShadow,
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        // elevation: 1,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: const SizedBox(
            height: 44,
            width: 44,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  final Function() onTap;
  final String buttonWord;
  const CustomBackButton({
    super.key,
    required this.onTap,
    this.buttonWord = 'back_text',
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            // horizontal: 4,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              Text(
                buttonWord,
                // style: TextStyle(),
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}
