import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';

Future<void> buildAlertDialog(BuildContext context) async => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(context.appLocale.development),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/lotties/sad_lottie.json'),
            Text(
              context.appLocale.theSectionIsUnderDevelopment,
            ),
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
            body: Text(
              context.appLocale.good,
              style: const TextStyle(),
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
        content: Text(
          context.appLocale.theSectionIsUnderDevelopment,
          style: AppTextStyles.gilroy17w600,
        ),

        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              context.appLocale.clearly,
              style: AppTextStyles.gilroy17w600Red,
            ),
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
