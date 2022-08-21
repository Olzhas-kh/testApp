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
          routeData: routeData, child: const Launcher());
    },
    WebRequestsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const WebRequestsPage());
    },
    BaseHomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    SectionsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SectionsPage());
    },
    ProfilePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfilePage());
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    HostelPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HostelPage());
    },
    HelpSectionPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HelpSectionPage());
    },
    HelpSectionDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<HelpSectionDetailPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HelpSectionDetailPage(id: args.id, key: args.key));
    },
    ChooseEduPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ChooseEduPage());
    },
    ApplicationPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApplicationPage());
    },
    SettlementConditionsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SettlementConditionsPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SettlementConditionsPage(text: args.text, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LauncherRoute.name, path: '/', children: [
          RouteConfig(BaseHomeRouter.name,
              path: 'empty-router-page',
              parent: LauncherRoute.name,
              children: [
                RouteConfig(HomePageRoute.name,
                    path: '', parent: BaseHomeRouter.name),
                RouteConfig(HostelPageRoute.name,
                    path: 'hostel-page', parent: BaseHomeRouter.name),
                RouteConfig(HelpSectionPageRoute.name,
                    path: 'help-section-page', parent: BaseHomeRouter.name),
                RouteConfig(HelpSectionDetailPageRoute.name,
                    path: 'help-section-detail-page',
                    parent: BaseHomeRouter.name),
                RouteConfig(ChooseEduPageRoute.name,
                    path: 'choose-edu-page', parent: BaseHomeRouter.name),
                RouteConfig(ApplicationPageRoute.name,
                    path: 'application-page', parent: BaseHomeRouter.name),
                RouteConfig(SettlementConditionsPageRoute.name,
                    path: 'settlement-conditions-page',
                    parent: BaseHomeRouter.name)
              ]),
          RouteConfig(SectionsPageRoute.name,
              path: 'sections-page', parent: LauncherRoute.name),
          RouteConfig(ProfilePageRoute.name,
              path: 'profile-page', parent: LauncherRoute.name)
        ]),
        RouteConfig(WebRequestsPageRoute.name, path: '/web-requests-page')
      ];
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<void> {
  const LauncherRoute({List<PageRouteInfo>? children})
      : super(LauncherRoute.name, path: '/', initialChildren: children);

  static const String name = 'LauncherRoute';
}

/// generated route for
/// [WebRequestsPage]
class WebRequestsPageRoute extends PageRouteInfo<void> {
  const WebRequestsPageRoute()
      : super(WebRequestsPageRoute.name, path: '/web-requests-page');

  static const String name = 'WebRequestsPageRoute';
}

/// generated route for
/// [EmptyRouterPage]
class BaseHomeRouter extends PageRouteInfo<void> {
  const BaseHomeRouter({List<PageRouteInfo>? children})
      : super(BaseHomeRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'BaseHomeRouter';
}

/// generated route for
/// [SectionsPage]
class SectionsPageRoute extends PageRouteInfo<void> {
  const SectionsPageRoute()
      : super(SectionsPageRoute.name, path: 'sections-page');

  static const String name = 'SectionsPageRoute';
}

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [HostelPage]
class HostelPageRoute extends PageRouteInfo<void> {
  const HostelPageRoute() : super(HostelPageRoute.name, path: 'hostel-page');

  static const String name = 'HostelPageRoute';
}

/// generated route for
/// [HelpSectionPage]
class HelpSectionPageRoute extends PageRouteInfo<void> {
  const HelpSectionPageRoute()
      : super(HelpSectionPageRoute.name, path: 'help-section-page');

  static const String name = 'HelpSectionPageRoute';
}

/// generated route for
/// [HelpSectionDetailPage]
class HelpSectionDetailPageRoute
    extends PageRouteInfo<HelpSectionDetailPageRouteArgs> {
  HelpSectionDetailPageRoute({required int id, Key? key})
      : super(HelpSectionDetailPageRoute.name,
            path: 'help-section-detail-page',
            args: HelpSectionDetailPageRouteArgs(id: id, key: key));

  static const String name = 'HelpSectionDetailPageRoute';
}

class HelpSectionDetailPageRouteArgs {
  const HelpSectionDetailPageRouteArgs({required this.id, this.key});

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
      : super(ChooseEduPageRoute.name, path: 'choose-edu-page');

  static const String name = 'ChooseEduPageRoute';
}

/// generated route for
/// [ApplicationPage]
class ApplicationPageRoute extends PageRouteInfo<void> {
  const ApplicationPageRoute()
      : super(ApplicationPageRoute.name, path: 'application-page');

  static const String name = 'ApplicationPageRoute';
}

/// generated route for
/// [SettlementConditionsPage]
class SettlementConditionsPageRoute
    extends PageRouteInfo<SettlementConditionsPageRouteArgs> {
  SettlementConditionsPageRoute({required String text, Key? key})
      : super(SettlementConditionsPageRoute.name,
            path: 'settlement-conditions-page',
            args: SettlementConditionsPageRouteArgs(text: text, key: key));

  static const String name = 'SettlementConditionsPageRoute';
}

class SettlementConditionsPageRouteArgs {
  const SettlementConditionsPageRouteArgs({required this.text, this.key});

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'SettlementConditionsPageRouteArgs{text: $text, key: $key}';
  }
}
