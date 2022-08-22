import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/presentation/launcher.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/choose_edu_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/dorm_card_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/help_section/help_section_detail_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/help_section/settlement_conditions_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/help_section_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/home_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/payment_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/success_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/web_requests_page.dart';
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
            // AutoRoute(page: ForeignCitizensPage),
            AutoRoute(page: SettlementConditionsPage),
          ],
        ),

        //
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

    //
    //
    // Home Section
    AutoRoute(page: WebRequestsPage),
    AutoRoute(page: SuccessPage),
    AutoRoute(page: PaymentPage),
  ],
)
class AppRouter extends _$AppRouter {}
