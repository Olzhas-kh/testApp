import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/presentation/launcher.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/home_page.dart';
import 'package:narxoz/src/feautures/profile/presentation/ui/profile_page.dart';
import 'package:narxoz/src/feautures/sections/presentation/ui/sections_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      page: Launcher,
      initial: true,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          name: 'BaseHomeRouter',
          children: [
            AutoRoute(
              page: HomePage,
              initial: true,
            ),
            AutoRoute(page: ApplicationPage),
          ],
        ),
        AutoRoute(page: SectionsPage),
        AutoRoute(page: ProfilePage),
        // AutoRoute(
        //   page: EmptyRouterPage,
        //   name: 'BaseProfileRouter',
        //   children: [
        //     AutoRoute(
        //       page: ProfilePage,
        //       initial: true,
        //     ),
        //     AutoRoute(page: ResponsePage),
        //   ],
        // ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
