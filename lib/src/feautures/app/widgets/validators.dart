import 'package:easy_localization/easy_localization.dart';
import 'package:narxoz/src/core/extension/src/string_extension.dart';

String? cityValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Введите город';
  }
  return null;
}

String? notEmptyValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'the_field_cannot_be_empty'.tr();
  }
  return null;
}

String? nameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'enter_your_name'.tr();
  }
  return null;
}

String? surnameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'enter_your_lastname'.tr();
  }
  return null;
}

String? phoneOrEmailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'valid_enter_your_phone_number_or_email'.tr();
  }
  return null;
}

String? emailOrValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'valid_enter_your_email'.tr();
  }
  return null;
}

String? phoneOrValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'valid_enter_your_phone_number'.tr();
  }
  return null;
}

String? verificationCodeValidator(String? value) {
  if (value == null) {
    return 'Введите проверечный код';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    // if (value != repeat.text) {
    //   return 'repeat error';
    // }
    return 'Введите пароль';
  }
  return null;
}

String? passwordRepeatValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Введите пароль';
  }
  return null;
}

String? sortValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Введите сорт';
  }
  return null;
}

String? priceValidator(String? value) {
  if (value == "0" || value == null || value.isEmpty) {
    return 'Введите цену';
  }
  return null;
}

String? quantityValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Введите количество';
  }
  return null;
}

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return null;
    // return 'enter_email'.tr();
  } else {
    if (value.emailValidator()) {
      return null;
    } else {
      return 'incorrect_input'.tr();
    }
  }
}

String? phoneValidator(String? value) {
  if (value == null || value.isEmpty) {
    return null;
    // return 'enter_the_phone_number'.tr();
  } else {
    if (value.numberValidator()) {
      return null;
    } else {
      return 'incorrect_input'.tr();
    }
  }
}
