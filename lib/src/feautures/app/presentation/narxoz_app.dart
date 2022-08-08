import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
import 'package:narxoz/src/feautures/app/presentation/multibloc_wrapper.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/router/router_observer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NarxozApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;
  const NarxozApp({
    required this.sharedPreferences,
    super.key,
  });

  @override
  State<NarxozApp> createState() => _NarxozAppState();
}

class _NarxozAppState extends State<NarxozApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   // const SystemUiOverlayStyle(statusBarColor: Colors.black),
    //   SystemUiOverlayStyle.dark,
    // );

    return MultiblocWrapper(
      child: MaterialApp.router(
        title: 'Narxoz',
        debugShowCheckedModeBanner: false,
        // navigatorKey: GlobalVariable.navigatorKey,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        //   DefaultWidgetsLocalizations.delegate,
        // ],
        // supportedLocales: const [
        //   Locale('ru'),
        // ],
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.light,
        routeInformationParser: sl<AppRouter>().defaultRouteParser(),
        // routerDelegate: sl<AppRouter>().delegate(),
        routerDelegate: AutoRouterDelegate(
          sl<AppRouter>(),
          navigatorObservers: () => [RouterObserver()],
        ),
        // home: const Launcher(),
      ),
    );
  }
}
