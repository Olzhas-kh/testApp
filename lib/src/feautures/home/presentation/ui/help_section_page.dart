import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/scroll_wrapper.dart';

class HelpSectionPage extends StatefulWidget {
  const HelpSectionPage({super.key});

  @override
  State<HelpSectionPage> createState() => _HelpSectionPageState();
}

class _HelpSectionPageState extends State<HelpSectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: SafeArea(
        child: ScrollWrapper(
          child: Column(
            children: [
              CustomAppBar(
                onTap: () {
                  context.router.pop();
                },
                text: 'Раздел помощи',
                isSafeArea: true,
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        boxShadow: AppDecorations.dropShadow,
                      ),
                      child: CustomButton(
                        height: 48,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Описание общежития',
                              style: AppTextStyles.gilroy16w600,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                        onClick: () {},
                        style: whiteButtonStyle(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        boxShadow: AppDecorations.dropShadow,
                      ),
                      child: CustomButton(
                        height: 48,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Процедура заселения',
                              style: AppTextStyles.gilroy16w600,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                        onClick: () {},
                        style: whiteButtonStyle(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        boxShadow: AppDecorations.dropShadow,
                      ),
                      child: CustomButton(
                        height: 48,
                        body: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Для иностранных граждан',
                              style: AppTextStyles.gilroy16w600,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                        onClick: () {},
                        style: whiteButtonStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
