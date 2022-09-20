import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:narxoz/src/core/l10n/l10n.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
import 'package:narxoz/src/feautures/app/presentation/locale_provider.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/router/router_observer.dart';
import 'package:narxoz/src/feautures/notifications/api/models/notification.dart';
import 'package:narxoz/src/feautures/notifications/bloc/notification_bloc.dart';
import 'package:provider/provider.dart';
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
  void _initHive() {
    Hive.initFlutter();

    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(NotificationEntityAdapter());
    }
  }

  void _firebaseInit() => BlocProvider.of<NotificationBloc>(context)
      .add(NotificationEvent.firebaseInit(context: context));

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
      // const SystemUiOverlayStyle(
      //   systemNavigationBarColor: Colors.black,
      //   systemNavigationBarIconBrightness: Brightness.dark,
      // ),
    );
    _initHive();
    _firebaseInit();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   // const SystemUiOverlayStyle(statusBarColor: Colors.black),
    //   SystemUiOverlayStyle.dark,
    // );

    return Consumer<LocaleProvider>(
      builder: (context, model, child) => MaterialApp.router(
        title: 'Narxoz',
        debugShowCheckedModeBanner: false,
        // navigatorKey: GlobalVariable.navigatorKey,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          // DefaultWidgetsLocalizations.delegate,
        ],
        supportedLocales: L10n.all,
        // localizationsDelegates: context.localizationDelegates,
        // supportedLocales: context.supportedLocales,
        locale: model.locale,
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
