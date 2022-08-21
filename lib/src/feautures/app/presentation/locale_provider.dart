import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:narxoz/src/core/l10n/l10n.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/services/locator_service.dart';

const _tag = 'LocaleProvider';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('ru'); // default locale

  Locale get locale => _locale;

  set locale(Locale val) {
    if (!L10n.all.contains(val)) return;
    _locale = val;
    sl<DioWrapper>().changeLang(_locale.languageCode.replaceAll('kk', 'kz'));
    log(_locale.languageCode, name: _tag);

    notifyListeners();
  }
}
