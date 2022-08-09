import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_card.dart';

class ApplicationPage2 extends StatefulWidget {
  const ApplicationPage2({super.key});

  @override
  State<ApplicationPage2> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: SafeArea(
        child: ListView(
          children: [
            ApplicationAppBar(
              onTap: () {
                context.router.pop();
              },
              text: 'Подача заявки',
              isSafeArea: true,
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  ApplicationCard(
                    title: 'Соц. уязвимые',
                    titleContent: 'Сироты, инвалиды, '
                        'многодетная семья до 18, '
                        'малообеспеченная семья и тд',
                    body: 'Количество свободных мест: 56\n'
                        'Расположение: ДС 2А ',
                    onTap: () {
                      context.router.push(const ApplicationPageRoute());
                    },
                  ),
                  const SizedBox(height: 30),
                  ApplicationCard(
                    title: 'Иностранцы',
                    body: 'Количество свободных мест: 12\n'
                        'Расположение: Хостел  ',
                    onTap: () {
                      context.router.push(const ApplicationPageRoute());
                    },
                  ),
                  const SizedBox(height: 30),
                  ApplicationCard(
                    title: 'БЖУ: 1 - 2 - 3 - 4 курсы',
                    titleContent: 'Обладатели стипендии '
                        'Б.Ж. Утемуратова '
                        '"Будущие Бизнес Лидеры"',
                    body: 'Количество свободных мест: 12\n'
                        'Расположение: Хостел  ',
                    onTap: () {
                      context.router.push(const ApplicationPageRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
