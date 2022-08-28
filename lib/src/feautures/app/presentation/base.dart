import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';

// ignore: unused_element
const _tag = 'Base';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  String iconPath = 'assets/icons';

  Future<void> init() async {}

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // lazyLoad: fga,
      // appBarBuilder: (_, tabsRouter) => PreferredSize(
      //   preferredSize: const Size.fromHeight(100),
      //   child: Container(
      //     color: AppColors.kWhite,
      //     padding:
      //         const EdgeInsets.symmetric(horizontal: 25, vertical: 15).copyWith(
      //       top: context.screenSize.height * .07,
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         SvgPicture.asset(AppSvgImages.narxozProfile),
      //         TextButton(
      //           onPressed: () {},
      //           child: const Text(
      //             'Русский',
      //             style: AppTextStyles.gilroy15w500Red,
      //           ).tr(),
      //         ),
      //       ],
      //     ),
      //   ), // here the desired height
      //   // child: AppBar(
      //   //   title: Padding(
      //   //     padding: const EdgeInsets.symmetric(vertical: 20),
      //   //     child: SvgPicture.asset(AppSvgImages.narxozProfile),
      //   //   ),
      //   //   centerTitle: false,
      //   //   actions: [
      //   //     Padding(
      //   //       padding: const EdgeInsets.only(right: 25),
      //   //       child: TextButton(
      //   //         onPressed: () {},
      //   //         child: Text(
      //   //           'Русский',
      //   //         ),
      //   //       ),
      //   //     ),
      //   //   ],
      //   // ),
      // ),
      //getAppBars().elementAt(tabsRouter.activeIndex),
      routes: const [
        BaseHomeRouter(),
        SectionsPageRoute(),
        ProfilePageRoute(),
        // BaseProfileRouter() // ProfilePageRoute(),
      ],
      backgroundColor: AppColors.kWhite,
      bottomNavigationBuilder: (_, tabsRouter) {
        return SizedBox(
          height: 93,
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.kWhite,
            currentIndex: tabsRouter.activeIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 9,
            unselectedFontSize: 9,
            selectedItemColor: tabsRouter.activeIndex == 2
                ? AppColors.kAzure
                : Colors.black, //const Color(0xff101828),
            unselectedItemColor: AppColors.kGray300,

            onTap: (int index) {
              // log('Before ontap ${context.router.stack}', name: _tag);

              if (tabsRouter.activeIndex == index) {
                // log('${tabsRouter.canPopSelfOrChildren}');
                tabsRouter.popTop();
                // context.router.popUntilRoot();
                // context
                //     .innerRouterOf<TabsRouter>(LauncherRoute.name)
                //     ?.root
                //     .popUntil((route) => route.isFirst);
                // print(tabsRouter.isRoot);
                // while (tabsRouter.canPopSelfOrChildren) {
                //   tabsRouter.popTop();
                // }

                // context.router.replace(LauncherRoute());

                // context.router.popUntil((route) {
                //   log('${route}', name: _tag);
                //   return !tabsRouter.canPopSelfOrChildren && route.;
                // });
              } else {
                tabsRouter.setActiveIndex(index);
              }

              // log('After ontap ${context.router.stack}', name: _tag);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset(
                  '$iconPath/home_icon.svg',
                  color: AppColors.kGray300,
                ),
                activeIcon: SvgPicture.asset(
                  '$iconPath/home_icon.svg',
                  color: AppColors.kRedPrimary,
                ),
                label: 'navbar_main',
              ),
              // BottomNavigationBarItem(
              //   backgroundColor: AppColors.kWhite,
              //   icon: SvgPicture.asset(
              //     '$iconPath/chat_icon.svg',
              //     color: AppColors.kGray300,
              //   ),
              //   activeIcon: SvgPicture.asset(
              //     '$iconPath/chat_icon.svg',
              //     color: Colors.black,
              //   ),
              //   label: 'navbar_chat'.tr(),
              // ),
              // BottomNavigationBarItem(
              //   backgroundColor: AppColors.kWhite,
              //   icon: SvgPicture.asset(
              //     '$iconPath/add_ad_icon.svg',
              //     // color: AppColors.kGray300,
              //   ),
              //   activeIcon: SvgPicture.asset('$iconPath/add_ad_icon.svg'),
              //   label: MediaQuery.of(context).size.width < 380
              //       ? 'navbar_give'.tr()
              //       : 'navbar_add_new_ad2'.tr(),
              // ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset(
                  '$iconPath/main_icon.svg',
                  color: AppColors.kGray300,
                ),
                activeIcon: SvgPicture.asset(
                  '$iconPath/main_icon.svg',
                  color: AppColors.kRedPrimary,
                ),
                label: 'navbar_favorite',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset(
                  '$iconPath/profile_icon.svg',
                  color: AppColors.kGray300,
                ),
                activeIcon: SvgPicture.asset(
                  '$iconPath/profile_icon.svg',
                  color: AppColors.kRedPrimary,
                ),
                label: 'navbar_profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
