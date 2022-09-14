
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_alert_dialog.dart';

class ChaptersWidget extends StatefulWidget {
  const ChaptersWidget({super.key});

  @override
  State<ChaptersWidget> createState() => _ChaptersWidgetState();
}

class _ChaptersWidgetState extends State<ChaptersWidget> {
  late List<_Chapter> chapters = [
    _Chapter(
      id: 1,
      text: "Banner",
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
      text: context.appLocale.hostel,
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_3.svg',
    ),
    _Chapter(
      id: 4,
      text: context.appLocale.applications,
      // onTap: () {},
      isActive: true,
      image: 'assets/icons/chapter_4.svg',
    ),
    _Chapter(
      id: 5,
      text: context.appLocale.finance,
      // onTap: () {},
      image: 'assets/icons/chapter_5.svg',
    ),
    _Chapter(
      id: 6,
      text: context.appLocale.documents,
      // onTap: () {},
      image: 'assets/icons/chapter_6.svg',
    ),
    _Chapter(
      id: 7,
      text: context.appLocale.catalog,
      // onTap: () {},
      image: 'assets/icons/chapter_7.svg',
    ),
    _Chapter(
      id: 8,
      text: context.appLocale.adviser,
      // onTap: () {},
      image: 'assets/icons/chapter_8.svg',
    ),
    _Chapter(
      id: 9,
      text: context.appLocale.library,
      // onTap: () {},
      image: 'assets/icons/chapter_9.svg',
    ),
  ];

  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }

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
                          case 1:
                            // if (Platform.isIOS) {
                            //   _launchInBrowser(Uri.parse(NarxozLinks.newBannerLink));
                            // } else {
                              context.router.push(const BannerPageRoute());
                            // }
                            break;
                          case 2:
                            context.router.push(const CanvasPageRoute());
                            break;
                          case 3:
                            context.router.push(const HostelPageRoute());
                            break;
                          case 4:
                            context.router.push(const WebRequestsPageRoute());
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
                        color: e.isActive ? AppColors.kRedPrimary : AppColors.kGray2,
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
