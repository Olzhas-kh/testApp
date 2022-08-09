import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Container(
        color: AppColors.kWhite,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        // padding:
        //     const EdgeInsets.symmetric(horizontal: 25, vertical: 15).copyWith(
        //   top: context.screenSize.height * .07,
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppSvgImages.narxozProfile),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Русский',
                style: AppTextStyles.gilroy15w500Red,
              ).tr(),
            ),
          ],
        ),
      ), // here the desired height
      // child: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.symmetric(vertical: 20),
      //     child: SvgPicture.asset(AppSvgImages.narxozProfile),
      //   ),
      //   centerTitle: false,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 25),
      //       child: TextButton(
      //         onPressed: () {},
      //         child: Text(
      //           'Русский',
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
