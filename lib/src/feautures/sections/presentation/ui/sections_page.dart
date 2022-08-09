import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/sections/presentation/widgets/section_card_widget.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({super.key});

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  List<SectionCardPayload> payloads = [
    SectionCardPayload(
      onTap: () {},
      text: 'Вакансии',
    ),
    SectionCardPayload(
      onTap: () {},
      text: 'Academic mobility',
    ),
    SectionCardPayload(
      onTap: () {},
      text: 'Student Life',
    ),
    SectionCardPayload(
      onTap: () {},
      text: 'Часто задаваемые вопросы',
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
