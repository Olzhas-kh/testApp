import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';

class SuccessPage extends StatelessWidget {
  final bool hasCheque;
  const SuccessPage({
    super.key,
    this.hasCheque = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/success.svg'),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.appLocale.yourApplicationHasBeenSuccessfullyProcessed,
                  style: AppTextStyles.gilroy24w500,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  context.appLocale.aDocumentConfirmingTheOrderHasBeenSentToYourEmail,
                  style: AppTextStyles.gilroy16w500.copyWith(color: const Color(0xff828282)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(
          bottom: 30,
        ),
        child: CustomButton(
          height: 50,
          width: double.infinity,
          body: Text(
            context.appLocale.goBackToTheMainPage,
            style: AppTextStyles.gilroy16w600White,
          ),
          onClick: () {
            context.router.pushAndPopUntil(
              const LauncherRoute(),
              predicate: (route) => false,
            );
            // if (hasCheque) {
            //   // context.router.popUntilRouteWithName('HomePage');
            //   context.router.replaceAll([
            //     // const HomePageRoute(),
            //     // const BaseHomeRouter(),
            //     const LauncherRoute(),
            //   ]);
            //   int count = 0;
            //   context.router.popUntil((route) {
            //     return count++ == 4;
            //   });
            // } else {
            //   context.router.replaceAll([
            //     // const HomePageRoute(),
            //     // const BaseHomeRouter(),
            //     const LauncherRoute(),
            //   ]);
            //   int count = 0;
            //   context.router.popUntil((route) {
            //     return count++ == 5;
            //   });
            // }
          },
          style: redButtonStyle(),
        ),
      ),
    );
  }
}
