import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/presentation/launcher.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/banner_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/canvas_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/home_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/choose_edu_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/dorm_card_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section/help_section_detail_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section/settlement_conditions_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/hostel_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/my_application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/payment_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/success_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/requests/web_requests_page.dart';
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
            AutoRoute(page: HostelPage),
            AutoRoute(page: HelpSectionPage),
            AutoRoute(page: HelpSectionDetailPage),
            AutoRoute(page: ChooseEduPage),
            // AutoRoute(page: ApplicationPage1),
            // AutoRoute(page: ApplicationPage2),
            AutoRoute(page: ApplicationPage),
            AutoRoute(page: DormCardPage),
            // AutoRoute(page: DescriptionHostelPage),
            // AutoRoute(page: CheckInProcedurePage),
            AutoRoute(page: MyApplicationPage),
            AutoRoute(page: SettlementConditionsPage),
          ],
        ),

        //
        AutoRoute(page: SectionsPage),
        AutoRoute(page: ProfilePage),
      ],
    ),

    //
    //
    // Home Section
    AutoRoute(page: BannerPage),
    AutoRoute(page: CanvasPage),
    AutoRoute(page: WebRequestsPage),
    AutoRoute(page: SuccessPage),
    AutoRoute(page: PaymentPage),
  ],
)
class AppRouter extends _$AppRouter {}
