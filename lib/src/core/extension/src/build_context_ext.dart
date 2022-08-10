import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';

extension BuildContextX on BuildContext {
  // IEnvironmentStorage get environment => EnvironmentScope.of(this);
  // IDependenciesStorage get dependencies => DependenciesScope.of(this);
  // Dio get dio => dependencies.dio;
  // AppDatabase get database => dependencies.database;
  // SharedPreferences get sharedPreferences => dependencies.sharedPreferences;

  // IRepositoryStorage get repository => RepositoryScope.of(this);

  // // ignore: avoid-non-null-assertion
  // AppLocalizations get localized => AppLocalizations.of(this)!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  AppLocalizations get appLocale => AppLocalizations.of(this)!;
}
