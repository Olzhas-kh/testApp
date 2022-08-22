import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/help_section/mock_help_section.dart';

class AcceptPrivacyWidget extends StatefulWidget {
  final bool isAcceptedPrivacy;
  final void Function(bool) callBack;
  final bool fromApplicationPage;
  const AcceptPrivacyWidget({
    required this.isAcceptedPrivacy,
    required this.callBack,
    this.fromApplicationPage = false,
    super.key,
  });

  @override
  State<AcceptPrivacyWidget> createState() => _AcceptPrivacyWidgetState();
}

class _AcceptPrivacyWidgetState extends State<AcceptPrivacyWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        InkWell(
          onTap: () {
            widget.callBack(!widget.isAcceptedPrivacy);
            // setState(() {
            //   isAcceptedPrivacy = !isAcceptedPrivacy;
            // });
          },
          child: Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.kRedPrimary,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: widget.isAcceptedPrivacy
                ? Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.kRedPrimary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
        const SizedBox(width: 15),
        if (widget.fromApplicationPage)
          RichText(
            text: TextSpan(
              text: 'Согласен с ',
              style: AppTextStyles.gilroy15w500,
              children: [
                TextSpan(
                  text: 'условиями заселения',
                  style: AppTextStyles.gilroy15w500RedUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.router.push(
                        SettlementConditionsPageRoute(
                          text: MockHelpSection.settlementConditionBody,
                        ),
                      );
                    },
                )
              ],
            ),
          )
        else
          Text(
            context.appLocale.paidEarlierAndThereIsAReceipt,
            style: AppTextStyles.gilroy20w500,
          ),
      ],
    );
  }
}
