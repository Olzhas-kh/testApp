import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_alert_dialog.dart';

class ChaptersWidget extends StatelessWidget {
  ChaptersWidget({super.key});

  final List<_Chapter> chapters = [
    _Chapter(
      id: 1,
      text: "Banner",
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_1.svg',
    ),
    _Chapter(
      id: 2,
      text: 'Canvas',
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_2.svg',
    ),
    _Chapter(
      id: 3,
      text: 'Общежитие',
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_3.svg',
    ),
    _Chapter(
      id: 4,
      text: 'Заяки',
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_4.svg',
    ),
    _Chapter(
      id: 5,
      text: 'Финансы',
      // onTap: () {},
      image: 'assets/icons/chapter_5.svg',
    ),
    _Chapter(
      id: 6,
      text: 'Документы',
      // onTap: () {},
      image: 'assets/icons/chapter_6.svg',
    ),
    _Chapter(
      id: 7,
      text: 'Каталог',
      // onTap: () {},
      image: 'assets/icons/chapter_7.svg',
    ),
    _Chapter(
      id: 8,
      text: 'Эдвайзер',
      // onTap: () {},
      image: 'assets/icons/chapter_8.svg',
    ),
    _Chapter(
      id: 9,
      text: 'Библиотека',
      // onTap: () {},
      image: 'assets/icons/chapter_9.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
        children: chapters.map<Widget>((e) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 96,
                width: 96,
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: AppDecorations.dropShadow,
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      if (e.isActive) {
                        switch (e.id) {
                          case 3:
                            context.router.push(const HostelPageRoute());
                            break;
                          default:
                        }
                      } else {
                        buildDevelopAlertDialog(context);
                      }
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        e.image,
                        color: e.isActive
                            ? AppColors.kRedPrimary
                            : AppColors.kGray2,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                e.text,
                style: AppTextStyles.gilroy15w500,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _Chapter {
  final int id;
  final String text;
  // final void Function()? onTap;
  final bool isActive;
  final String image;

  _Chapter({
    required this.id,
    required this.text,
    // this.onTap,
    this.isActive = false,
    required this.image,
  });
}