import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

//
//
// Раздел banner на главном экране
class BannerPage extends StatefulWidget {
  const BannerPage({super.key});

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isSafeArea: true,
              text: 'Banner',
              onTap: () {
                context.router.pop();
              },
            ),
            const Expanded(
              child: WebView(
                initialUrl: 'https://sis-pprd-eis.narxoz.kz:8447/authenticationendpoint/login.do'
                '?commonAuthCallerPath=%252Fcas%252Flogin&forceAuth=false&passiveAuth=false&tenantDomain=carbon.super&sessionDataKey=21300719-7c63-4f12-957d-51302e0c7ae2&relyingParty=StudentSSB&type=cassso&sp=StudentSSB&isSaaSApp=false&authenticators=BasicAuthenticator:LOCAL',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
