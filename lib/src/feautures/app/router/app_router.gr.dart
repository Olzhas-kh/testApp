// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LauncherRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Launcher(),
      );
    },
    BannerPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BannerPage(),
      );
    },
    BannersDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<BannersDetailPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: BannersDetailPage(
          link: args.link,
          key: args.key,
        ),
      );
    },
    CanvasPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CanvasPage(),
      );
    },
    WebRequestsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WebRequestsPage(),
      );
    },
    ApplicationSuccessPageRoute.name: (routeData) {
      final args = routeData.argsAs<ApplicationSuccessPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ApplicationSuccessPage(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    SuccessPageRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessPageRouteArgs>(
          orElse: () => const SuccessPageRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SuccessPage(
          key: args.key,
          hasCheque: args.hasCheque,
        ),
      );
    },
    PaymentPageRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PaymentPage(
          payment: args.payment,
          key: args.key,
        ),
      );
    },
    PaymentPage1Route.name: (routeData) {
      final args = routeData.argsAs<PaymentPage1RouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PaymentPage1(
          payment: args.payment,
          key: args.key,
        ),
      );
    },
    NotificationsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NotificationsScreen(),
      );
    },
    DocumentsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentsPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DocumentsPage(
          key: args.key,
          title: args.title,
          documentCatId: args.documentCatId,
        ),
      );
    },
    BaseHomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    BaseSectionsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HostelPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HostelPage(),
      );
    },
    HelpSectionPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HelpSectionPage(),
      );
    },
    HelpSectionDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<HelpSectionDetailPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HelpSectionDetailPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    ChooseEduPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ChooseEduPage(),
      );
    },
    ApplicationPageRoute.name: (routeData) {
      final args = routeData.argsAs<ApplicationPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ApplicationPage(
          key: args.key,
          catId: args.catId,
        ),
      );
    },
    PreparationPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PreparationPaymentRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PreparationPayment(
          verificationResponse: args.verificationResponse,
          orderId: args.orderId,
          key: args.key,
        ),
      );
    },
    MyApplicationPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyApplicationPage(),
      );
    },
    SettlementConditionsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SettlementConditionsPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SettlementConditionsPage(
          text: args.text,
          key: args.key,
        ),
      );
    },
    SchedulePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SchedulePage(),
      );
    },
    TasksPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TasksPage(),
      );
    },
    SectionsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SectionsPage(),
      );
    },
    StudentsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const StudentsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LauncherRoute.name,
          path: '/',
          children: [
            RouteConfig(
              BaseHomeRouter.name,
              path: 'empty-router-page',
              parent: LauncherRoute.name,
              children: [
                RouteConfig(
                  HomePageRoute.name,
                  path: '',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  HostelPageRoute.name,
                  path: 'hostel-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  HelpSectionPageRoute.name,
                  path: 'help-section-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  HelpSectionDetailPageRoute.name,
                  path: 'help-section-detail-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  ChooseEduPageRoute.name,
                  path: 'choose-edu-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  ApplicationPageRoute.name,
                  path: 'application-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  PreparationPaymentRoute.name,
                  path: 'preparation-payment',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  MyApplicationPageRoute.name,
                  path: 'my-application-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  SettlementConditionsPageRoute.name,
                  path: 'settlement-conditions-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  SchedulePageRoute.name,
                  path: 'schedule-page',
                  parent: BaseHomeRouter.name,
                ),
                RouteConfig(
                  TasksPageRoute.name,
                  path: 'tasks-page',
                  parent: BaseHomeRouter.name,
                ),
              ],
            ),
            RouteConfig(
              BaseSectionsRouter.name,
              path: 'empty-router-page',
              parent: LauncherRoute.name,
              children: [
                RouteConfig(
                  SectionsPageRoute.name,
                  path: '',
                  parent: BaseSectionsRouter.name,
                ),
                RouteConfig(
                  StudentsPageRoute.name,
                  path: 'students-page',
                  parent: BaseSectionsRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ProfilePageRoute.name,
              path: 'profile-page',
              parent: LauncherRoute.name,
            ),
          ],
        ),
        RouteConfig(
          BannerPageRoute.name,
          path: '/banner-page',
        ),
        RouteConfig(
          BannersDetailPageRoute.name,
          path: '/banners-detail-page',
        ),
        RouteConfig(
          CanvasPageRoute.name,
          path: '/canvas-page',
        ),
        RouteConfig(
          WebRequestsPageRoute.name,
          path: '/web-requests-page',
        ),
        RouteConfig(
          ApplicationSuccessPageRoute.name,
          path: '/application-success-page',
        ),
        RouteConfig(
          SuccessPageRoute.name,
          path: '/success-page',
        ),
        RouteConfig(
          PaymentPageRoute.name,
          path: '/payment-page',
        ),
        RouteConfig(
          PaymentPage1Route.name,
          path: '/payment-page1',
        ),
        RouteConfig(
          NotificationsScreenRoute.name,
          path: '/notifications-screen',
        ),
        RouteConfig(
          DocumentsPageRoute.name,
          path: '/documents-page',
        ),
      ];
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<void> {
  const LauncherRoute({List<PageRouteInfo>? children})
      : super(
          LauncherRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'LauncherRoute';
}

/// generated route for
/// [BannerPage]
class BannerPageRoute extends PageRouteInfo<void> {
  const BannerPageRoute()
      : super(
          BannerPageRoute.name,
          path: '/banner-page',
        );

  static const String name = 'BannerPageRoute';
}

/// generated route for
/// [BannersDetailPage]
class BannersDetailPageRoute extends PageRouteInfo<BannersDetailPageRouteArgs> {
  BannersDetailPageRoute({
    required String link,
    Key? key,
  }) : super(
          BannersDetailPageRoute.name,
          path: '/banners-detail-page',
          args: BannersDetailPageRouteArgs(
            link: link,
            key: key,
          ),
        );

  static const String name = 'BannersDetailPageRoute';
}

class BannersDetailPageRouteArgs {
  const BannersDetailPageRouteArgs({
    required this.link,
    this.key,
  });

  final String link;

  final Key? key;

  @override
  String toString() {
    return 'BannersDetailPageRouteArgs{link: $link, key: $key}';
  }
}

/// generated route for
/// [CanvasPage]
class CanvasPageRoute extends PageRouteInfo<void> {
  const CanvasPageRoute()
      : super(
          CanvasPageRoute.name,
          path: '/canvas-page',
        );

  static const String name = 'CanvasPageRoute';
}

/// generated route for
/// [WebRequestsPage]
class WebRequestsPageRoute extends PageRouteInfo<void> {
  const WebRequestsPageRoute()
      : super(
          WebRequestsPageRoute.name,
          path: '/web-requests-page',
        );

  static const String name = 'WebRequestsPageRoute';
}

/// generated route for
/// [ApplicationSuccessPage]
class ApplicationSuccessPageRoute
    extends PageRouteInfo<ApplicationSuccessPageRouteArgs> {
  ApplicationSuccessPageRoute({
    Key? key,
    required int orderId,
  }) : super(
          ApplicationSuccessPageRoute.name,
          path: '/application-success-page',
          args: ApplicationSuccessPageRouteArgs(
            key: key,
            orderId: orderId,
          ),
        );

  static const String name = 'ApplicationSuccessPageRoute';
}

class ApplicationSuccessPageRouteArgs {
  const ApplicationSuccessPageRouteArgs({
    this.key,
    required this.orderId,
  });

  final Key? key;

  final int orderId;

  @override
  String toString() {
    return 'ApplicationSuccessPageRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [SuccessPage]
class SuccessPageRoute extends PageRouteInfo<SuccessPageRouteArgs> {
  SuccessPageRoute({
    Key? key,
    bool hasCheque = false,
  }) : super(
          SuccessPageRoute.name,
          path: '/success-page',
          args: SuccessPageRouteArgs(
            key: key,
            hasCheque: hasCheque,
          ),
        );

  static const String name = 'SuccessPageRoute';
}

class SuccessPageRouteArgs {
  const SuccessPageRouteArgs({
    this.key,
    this.hasCheque = false,
  });

  final Key? key;

  final bool hasCheque;

  @override
  String toString() {
    return 'SuccessPageRouteArgs{key: $key, hasCheque: $hasCheque}';
  }
}

/// generated route for
/// [PaymentPage]
class PaymentPageRoute extends PageRouteInfo<PaymentPageRouteArgs> {
  PaymentPageRoute({
    required PaymentDTO payment,
    Key? key,
  }) : super(
          PaymentPageRoute.name,
          path: '/payment-page',
          args: PaymentPageRouteArgs(
            payment: payment,
            key: key,
          ),
        );

  static const String name = 'PaymentPageRoute';
}

class PaymentPageRouteArgs {
  const PaymentPageRouteArgs({
    required this.payment,
    this.key,
  });

  final PaymentDTO payment;

  final Key? key;

  @override
  String toString() {
    return 'PaymentPageRouteArgs{payment: $payment, key: $key}';
  }
}

/// generated route for
/// [PaymentPage1]
class PaymentPage1Route extends PageRouteInfo<PaymentPage1RouteArgs> {
  PaymentPage1Route({
    required PaymentDTO payment,
    Key? key,
  }) : super(
          PaymentPage1Route.name,
          path: '/payment-page1',
          args: PaymentPage1RouteArgs(
            payment: payment,
            key: key,
          ),
        );

  static const String name = 'PaymentPage1Route';
}

class PaymentPage1RouteArgs {
  const PaymentPage1RouteArgs({
    required this.payment,
    this.key,
  });

  final PaymentDTO payment;

  final Key? key;

  @override
  String toString() {
    return 'PaymentPage1RouteArgs{payment: $payment, key: $key}';
  }
}

/// generated route for
/// [NotificationsScreen]
class NotificationsScreenRoute extends PageRouteInfo<void> {
  const NotificationsScreenRoute()
      : super(
          NotificationsScreenRoute.name,
          path: '/notifications-screen',
        );

  static const String name = 'NotificationsScreenRoute';
}

/// generated route for
/// [DocumentsPage]
class DocumentsPageRoute extends PageRouteInfo<DocumentsPageRouteArgs> {
  DocumentsPageRoute({
    Key? key,
    required String title,
    required int documentCatId,
  }) : super(
          DocumentsPageRoute.name,
          path: '/documents-page',
          args: DocumentsPageRouteArgs(
            key: key,
            title: title,
            documentCatId: documentCatId,
          ),
        );

  static const String name = 'DocumentsPageRoute';
}

class DocumentsPageRouteArgs {
  const DocumentsPageRouteArgs({
    this.key,
    required this.title,
    required this.documentCatId,
  });

  final Key? key;

  final String title;

  final int documentCatId;

  @override
  String toString() {
    return 'DocumentsPageRouteArgs{key: $key, title: $title, documentCatId: $documentCatId}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class BaseHomeRouter extends PageRouteInfo<void> {
  const BaseHomeRouter({List<PageRouteInfo>? children})
      : super(
          BaseHomeRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'BaseHomeRouter';
}

/// generated route for
/// [EmptyRouterPage]
class BaseSectionsRouter extends PageRouteInfo<void> {
  const BaseSectionsRouter({List<PageRouteInfo>? children})
      : super(
          BaseSectionsRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'BaseSectionsRouter';
}

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [HostelPage]
class HostelPageRoute extends PageRouteInfo<void> {
  const HostelPageRoute()
      : super(
          HostelPageRoute.name,
          path: 'hostel-page',
        );

  static const String name = 'HostelPageRoute';
}

/// generated route for
/// [HelpSectionPage]
class HelpSectionPageRoute extends PageRouteInfo<void> {
  const HelpSectionPageRoute()
      : super(
          HelpSectionPageRoute.name,
          path: 'help-section-page',
        );

  static const String name = 'HelpSectionPageRoute';
}

/// generated route for
/// [HelpSectionDetailPage]
class HelpSectionDetailPageRoute
    extends PageRouteInfo<HelpSectionDetailPageRouteArgs> {
  HelpSectionDetailPageRoute({
    required int id,
    Key? key,
  }) : super(
          HelpSectionDetailPageRoute.name,
          path: 'help-section-detail-page',
          args: HelpSectionDetailPageRouteArgs(
            id: id,
            key: key,
          ),
        );

  static const String name = 'HelpSectionDetailPageRoute';
}

class HelpSectionDetailPageRouteArgs {
  const HelpSectionDetailPageRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'HelpSectionDetailPageRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [ChooseEduPage]
class ChooseEduPageRoute extends PageRouteInfo<void> {
  const ChooseEduPageRoute()
      : super(
          ChooseEduPageRoute.name,
          path: 'choose-edu-page',
        );

  static const String name = 'ChooseEduPageRoute';
}

/// generated route for
/// [ApplicationPage]
class ApplicationPageRoute extends PageRouteInfo<ApplicationPageRouteArgs> {
  ApplicationPageRoute({
    Key? key,
    required int catId,
  }) : super(
          ApplicationPageRoute.name,
          path: 'application-page',
          args: ApplicationPageRouteArgs(
            key: key,
            catId: catId,
          ),
        );

  static const String name = 'ApplicationPageRoute';
}

class ApplicationPageRouteArgs {
  const ApplicationPageRouteArgs({
    this.key,
    required this.catId,
  });

  final Key? key;

  final int catId;

  @override
  String toString() {
    return 'ApplicationPageRouteArgs{key: $key, catId: $catId}';
  }
}

/// generated route for
/// [PreparationPayment]
class PreparationPaymentRoute
    extends PageRouteInfo<PreparationPaymentRouteArgs> {
  PreparationPaymentRoute({
    required VerificationResponseDTO verificationResponse,
    required int orderId,
    Key? key,
  }) : super(
          PreparationPaymentRoute.name,
          path: 'preparation-payment',
          args: PreparationPaymentRouteArgs(
            verificationResponse: verificationResponse,
            orderId: orderId,
            key: key,
          ),
        );

  static const String name = 'PreparationPaymentRoute';
}

class PreparationPaymentRouteArgs {
  const PreparationPaymentRouteArgs({
    required this.verificationResponse,
    required this.orderId,
    this.key,
  });

  final VerificationResponseDTO verificationResponse;

  final int orderId;

  final Key? key;

  @override
  String toString() {
    return 'PreparationPaymentRouteArgs{verificationResponse: $verificationResponse, orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [MyApplicationPage]
class MyApplicationPageRoute extends PageRouteInfo<void> {
  const MyApplicationPageRoute()
      : super(
          MyApplicationPageRoute.name,
          path: 'my-application-page',
        );

  static const String name = 'MyApplicationPageRoute';
}

/// generated route for
/// [SettlementConditionsPage]
class SettlementConditionsPageRoute
    extends PageRouteInfo<SettlementConditionsPageRouteArgs> {
  SettlementConditionsPageRoute({
    required String text,
    Key? key,
  }) : super(
          SettlementConditionsPageRoute.name,
          path: 'settlement-conditions-page',
          args: SettlementConditionsPageRouteArgs(
            text: text,
            key: key,
          ),
        );

  static const String name = 'SettlementConditionsPageRoute';
}

class SettlementConditionsPageRouteArgs {
  const SettlementConditionsPageRouteArgs({
    required this.text,
    this.key,
  });

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'SettlementConditionsPageRouteArgs{text: $text, key: $key}';
  }
}

/// generated route for
/// [SchedulePage]
class SchedulePageRoute extends PageRouteInfo<void> {
  const SchedulePageRoute()
      : super(
          SchedulePageRoute.name,
          path: 'schedule-page',
        );

  static const String name = 'SchedulePageRoute';
}

/// generated route for
/// [TasksPage]
class TasksPageRoute extends PageRouteInfo<void> {
  const TasksPageRoute()
      : super(
          TasksPageRoute.name,
          path: 'tasks-page',
        );

  static const String name = 'TasksPageRoute';
}

/// generated route for
/// [SectionsPage]
class SectionsPageRoute extends PageRouteInfo<void> {
  const SectionsPageRoute()
      : super(
          SectionsPageRoute.name,
          path: '',
        );

  static const String name = 'SectionsPageRoute';
}

/// generated route for
/// [StudentsPage]
class StudentsPageRoute extends PageRouteInfo<void> {
  const StudentsPageRoute()
      : super(
          StudentsPageRoute.name,
          path: 'students-page',
        );

  static const String name = 'StudentsPageRoute';
}
