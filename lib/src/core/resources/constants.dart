// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

const NOT_FOUND_IMAGE =
    'https://cdn.shopify.com/shopifycloud/shopify/assets/no-image-2048-5e88c1b20e087fb7bbe9a3771824e743c244f437e4f8ba93bbf7b11b53f7824c_600x600.gif';

const NO_INTERNET_TEXT = 'Нет интернета!'; //'Нет интернета!';

mixin NarxozLinks {
  static const canvasTestLink = 'https://canvas-test.narxoz.kz';

  static const canvasLink = 'https://canvas.narxoz.kz/login/canvas';

  static const oldBannerLink = 'https://sis-pprd-eis.narxoz.kz:8447/authenticationendpoint/login.do'
      '?commonAuthCallerPath=%252Fcas%252Flogin&'
      'forceAuth=false&passiveAuth=false&'
      'tenantDomain=carbon.super&sessionDataKey=21300719-7c63-4f12-957d-51302e0c7ae2&relyingParty=StudentSSB'
      '&type=cassso&sp=StudentSSB&isSaaSApp=false&authenticators=BasicAuthenticator:LOCAL';

  static const newBannerLink = 'http://sis-pprd-xess2.narxoz.kz:8080/StudentSSB/ssb/studentProfile';
}

Widget refreshClassicHeader = const ClassicHeader(
  completeText: 'Успешно обновлено!',
  releaseText: 'Обновить!',
  idleText: 'Потяните вниз, чтобы обновить',
  failedText: 'Неизвестная ошибка',
  refreshingText: 'Обновление...',
);
