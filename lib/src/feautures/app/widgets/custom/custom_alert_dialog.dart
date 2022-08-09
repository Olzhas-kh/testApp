import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';

Future<void> buildAlertDialog(BuildContext context) async => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Разработка'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/lotties/sad_lottie.json'),
            const Text('Данный раздел в разработке!'),
          ],
        ),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        actions: <Widget>[
          CustomButton(
            height: 56,
            onClick: () {
              Navigator.pop(context);
            },
            body: const Text(
              'Хорошо!',
              style: TextStyle(),
            ),
            style: pinkButtonStyle(),
          ),
        ],
      ),
    );

Future<void> buildDevelopAlertDialog(BuildContext context) async =>
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        // title: const Text('Разработка'),
        content: const Text(
          'Раздел находится в разработке',
          style: AppTextStyles.gilroy17w600,
        ),

        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text(
              "clearly",
              style: AppTextStyles.gilroy17w600Red,
            ).tr(),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          // CustomButton(
          //   height: 56,
          //   onClick: () {
          //     Navigator.pop(context);
          //   },
          //   body: const Text(
          //     'Хорошо!',
          //     style: TextStyle(),
          //   ),
          //   style: pinkButtonStyle(),
          // ),
        ],
      ),
    );
