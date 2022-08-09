import 'package:narxoz/src/feautures/app/logic/main_runner.dart';
import 'package:narxoz/src/feautures/app/model/async_app_dependencies.dart';
import 'package:narxoz/src/feautures/app/presentation/narxoz_app.dart';

Future<void> main() => MainRunner.run<AsyncAppDependencies>(
      asyncDependencies: AsyncAppDependencies.obtain,
      appBuilder: (dependencies) => NarxozApp(
        sharedPreferences: dependencies.sharedPreferences,
      ),
    );
