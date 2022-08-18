import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/help_section/mock_help_section.dart';

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
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                context.router.pop();
              },
              text: context.appLocale.helpSection,
              isSafeArea: true,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                children: [
                  const SizedBox(height: 26),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      boxShadow: AppDecorations.dropShadow,
                    ),
                    child: CustomButton(
                      height: 48,
                      body: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.appLocale.descriptionOfTheHostel,
                            style: AppTextStyles.gilroy16w600,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ],
                      ),
                      onClick: () {
                        context.router.push(
                          DescriptionHostelPageRoute(
                            text: MockHelpSection.descriptionText,
                          ),
                        );
                      },
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
                        children: [
                          Text(
                            context.appLocale.checkInProcedure,
                            style: AppTextStyles.gilroy16w600,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ],
                      ),
                      onClick: () {
                        context.router.push(
                          CheckInProcedurePageRoute(
                            header: MockHelpSection.checkInProcedureHeader,
                            text: MockHelpSection.checkInProcedureBody,
                          ),
                        );
                      },
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
                        children: [
                          Text(
                            context.appLocale.forForeignCitizens,
                            style: AppTextStyles.gilroy16w600,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ],
                      ),
                      onClick: () {
                        context.router.push(
                          ForeignCitizensPageRoute(
                            text: MockHelpSection.foreignCitizensText,
                          ),
                        );
                      },
                      style: whiteButtonStyle(),
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
