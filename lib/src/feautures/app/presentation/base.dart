import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/profile/presentation/bloc/profile_cubit.dart';

// ignore: unused_element
const _tag = 'Base';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  String iconPath = 'assets/icons';

  Future<void> init() async {
    BlocProvider.of<ProfileCubit>(context).getProfile();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        BaseHomeRouter(),
        // FIXME
        SectionsPageRoute(),
        ProfilePageRoute(),
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
            selectedItemColor: tabsRouter.activeIndex == 2 ? AppColors.kAzure : Colors.black, //const Color(0xff101828),
            unselectedItemColor: AppColors.kGray300,

            onTap: (int index) {
              // log('Before ontap ${context.router.stack}', name: _tag);

              if (tabsRouter.activeIndex == index) {
                // log('${tabsRouter.canPopSelfOrChildren}');
                tabsRouter.popTop();

                // context.router.replaceAll([
                //   LauncherRoute(
                //     children:
                //   )
                // ]);

                // tabsRouter.replaceAll([
                //   BaseHomeRouter(),
                //   SectionsPageRoute(),
                //   ProfilePageRoute(),
                // ], ProfilePageRoute());
                // setState(() {});

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
