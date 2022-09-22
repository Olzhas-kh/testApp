import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_alert_dialog.dart';
import 'package:narxoz/src/feautures/sections/presentation/widgets/section_card_widget.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({super.key});

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  late List<SectionCardPayload> payloads = [
    SectionCardPayload(
      onTap: () {
        context.router.push(const StudentsPageRoute());
      },
      text: 'Student Life',
      localImage: 'assets/temp/section3.png',
      isActive: true,
    ),
    SectionCardPayload(
      onTap: () {
        buildDevelopAlertDialog(context);
      },
      text: context.appLocale.jobOpenings,
      localImage: 'assets/temp/section1.png',
    ),
    SectionCardPayload(
      onTap: () {
        buildDevelopAlertDialog(context);
      },
      text: 'Academic mobility',
      localImage: 'assets/temp/section2.png',
    ),
    SectionCardPayload(
      onTap: () {
        buildDevelopAlertDialog(context);
      },
      text: context.appLocale.frequentlyAskedQuestions,
      localImage: 'assets/temp/section4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: AppColors.kWhite,
        child: Column(
          children: [
            const BaseAppBar(),
            Expanded(
              child: ListView.separated(
                itemCount: payloads.length,
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  return SectionCard(
                    sectionCardPayload: payloads[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 12);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
