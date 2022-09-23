import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/presentation/launcher.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/verification_response_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/banner_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/banners_detail_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/canvas_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/home_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/application_success_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/choose_edu_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section/help_section_detail_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section/settlement_conditions_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/help_section_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/hostel_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/my_application_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/payment_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/payment_page1.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/preparation_payment.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/hostel/success_page.dart';
import 'package:narxoz/src/feautures/home/presentation/ui/requests/web_requests_page.dart';
import 'package:narxoz/src/feautures/notifications/notifications.dart';
import 'package:narxoz/src/feautures/profile/presentation/ui/profile_page.dart';
import 'package:narxoz/src/feautures/sections/presentation/ui/documents_page.dart';
import 'package:narxoz/src/feautures/sections/presentation/ui/sections_page.dart';
import 'package:narxoz/src/feautures/sections/presentation/ui/students_page.dart';

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
            AutoRoute(page: PreparationPayment),
            // AutoRoute(page: DescriptionHostelPage),
            // AutoRoute(page: CheckInProcedurePage),
            AutoRoute(page: MyApplicationPage),
            AutoRoute(page: SettlementConditionsPage),
          ],
        ),

        //
        AutoRoute(
          page: EmptyRouterPage,
          name: 'BaseSectionsRouter',
          children: [
            AutoRoute(
              page: SectionsPage,
              initial: true,
            ),
            AutoRoute(page: StudentsPage),
          ],
        ),
        AutoRoute(page: ProfilePage),
      ],
    ),

    //
    //
    // Home Section
    AutoRoute(page: BannerPage),
    AutoRoute(page: BannersDetailPage),
    AutoRoute(page: CanvasPage),
    AutoRoute(page: WebRequestsPage),
    AutoRoute(page: ApplicationSuccessPage),
    AutoRoute(page: SuccessPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: PaymentPage1),
    AutoRoute(page: NotificationsScreen),

    // Sections
    AutoRoute(page: DocumentsPage),
  ],
)
class AppRouter extends _$AppRouter {}
