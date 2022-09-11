import 'dart:async';
import 'dart:io';

// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
// import 'package:kausar/core/services/locator_service.dart';

typedef AsyncDependencies<D> = Future<D> Function();
typedef AppBuilder<D> = Widget Function(
  D dependencies,
);

mixin MainRunner {
  static Future<Widget> _initApp<D>(
    bool shouldSend,
    AsyncDependencies<D> asyncDependencies,
    AppBuilder<D> app,
  ) async {
    final dependencies = await asyncDependencies();

    return app(dependencies);
  }

  static Future<void> run<D>({
    bool shouldSend = !kDebugMode,
    required AsyncDependencies<D> asyncDependencies,
    required AppBuilder<D> appBuilder,
  }) async {
    // ignore: avoid-ignoring-return-values
    WidgetsFlutterBinding.ensureInitialized();
    // await EasyLocalization.ensureInitialized();
    // EasyLocalization.logger.enableLevels = [];

    // await Firebase.initializeApp();

    if (!kIsWeb) {
      if (Platform.isAndroid) {
        await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
      }
    }

    final app = await _initApp(shouldSend, asyncDependencies, appBuilder);
    await initLocator();

    runApp(app);
    // runApp(
    //   EasyLocalization(
    //     useFallbackTranslations: true,
    //     supportedLocales: const [
    //       Locale('ru'),
    //       Locale('en'),
    //       Locale('kk'),
    //     ],
    //     path: 'assets/translations',
    //     fallbackLocale: const Locale('ru'),
    //     child: app,
    //   ),
    // );
  }
}
