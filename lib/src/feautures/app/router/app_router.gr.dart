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
    ApplicationPage1Route.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApplicationPage1());
    },
    ApplicationPage2Route.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApplicationPage2());
    },
    ApplicationPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApplicationPage());
    },
    DescriptionHostelPageRoute.name: (routeData) {
      final args = routeData.argsAs<DescriptionHostelPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DescriptionHostelPage(text: args.text, key: args.key));
    },
    CheckInProcedurePageRoute.name: (routeData) {
      final args = routeData.argsAs<CheckInProcedurePageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CheckInProcedurePage(
              header: args.header, text: args.text, key: args.key));
    },
    ForeignCitizensPageRoute.name: (routeData) {
      final args = routeData.argsAs<ForeignCitizensPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ForeignCitizensPage(text: args.text, key: args.key));
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
                RouteConfig(ApplicationPage1Route.name,
                    path: 'application-page1', parent: BaseHomeRouter.name),
                RouteConfig(ApplicationPage2Route.name,
                    path: 'application-page2', parent: BaseHomeRouter.name),
                RouteConfig(ApplicationPageRoute.name,
                    path: 'application-page', parent: BaseHomeRouter.name),
                RouteConfig(DescriptionHostelPageRoute.name,
                    path: 'description-hostel-page',
                    parent: BaseHomeRouter.name),
                RouteConfig(CheckInProcedurePageRoute.name,
                    path: 'check-in-procedure-page',
                    parent: BaseHomeRouter.name),
                RouteConfig(ForeignCitizensPageRoute.name,
                    path: 'foreign-citizens-page', parent: BaseHomeRouter.name)
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
/// [ApplicationPage1]
class ApplicationPage1Route extends PageRouteInfo<void> {
  const ApplicationPage1Route()
      : super(ApplicationPage1Route.name, path: 'application-page1');

  static const String name = 'ApplicationPage1Route';
}

/// generated route for
/// [ApplicationPage2]
class ApplicationPage2Route extends PageRouteInfo<void> {
  const ApplicationPage2Route()
      : super(ApplicationPage2Route.name, path: 'application-page2');

  static const String name = 'ApplicationPage2Route';
}

/// generated route for
/// [ApplicationPage]
class ApplicationPageRoute extends PageRouteInfo<void> {
  const ApplicationPageRoute()
      : super(ApplicationPageRoute.name, path: 'application-page');

  static const String name = 'ApplicationPageRoute';
}

/// generated route for
/// [DescriptionHostelPage]
class DescriptionHostelPageRoute
    extends PageRouteInfo<DescriptionHostelPageRouteArgs> {
  DescriptionHostelPageRoute({required String text, Key? key})
      : super(DescriptionHostelPageRoute.name,
            path: 'description-hostel-page',
            args: DescriptionHostelPageRouteArgs(text: text, key: key));

  static const String name = 'DescriptionHostelPageRoute';
}

class DescriptionHostelPageRouteArgs {
  const DescriptionHostelPageRouteArgs({required this.text, this.key});

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'DescriptionHostelPageRouteArgs{text: $text, key: $key}';
  }
}

/// generated route for
/// [CheckInProcedurePage]
class CheckInProcedurePageRoute
    extends PageRouteInfo<CheckInProcedurePageRouteArgs> {
  CheckInProcedurePageRoute(
      {required String header, required String text, Key? key})
      : super(CheckInProcedurePageRoute.name,
            path: 'check-in-procedure-page',
            args: CheckInProcedurePageRouteArgs(
                header: header, text: text, key: key));

  static const String name = 'CheckInProcedurePageRoute';
}

class CheckInProcedurePageRouteArgs {
  const CheckInProcedurePageRouteArgs(
      {required this.header, required this.text, this.key});

  final String header;

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'CheckInProcedurePageRouteArgs{header: $header, text: $text, key: $key}';
  }
}

/// generated route for
/// [ForeignCitizensPage]
class ForeignCitizensPageRoute
    extends PageRouteInfo<ForeignCitizensPageRouteArgs> {
  ForeignCitizensPageRoute({required String text, Key? key})
      : super(ForeignCitizensPageRoute.name,
            path: 'foreign-citizens-page',
            args: ForeignCitizensPageRouteArgs(text: text, key: key));

  static const String name = 'ForeignCitizensPageRoute';
}

class ForeignCitizensPageRouteArgs {
  const ForeignCitizensPageRouteArgs({required this.text, this.key});

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'ForeignCitizensPageRouteArgs{text: $text, key: $key}';
  }
}
