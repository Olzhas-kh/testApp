import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

//
//
// Раздел заявки на главном экране
class WebRequestsPage extends StatefulWidget {
  const WebRequestsPage({super.key});

  @override
  State<WebRequestsPage> createState() => _WebRequestsPageState();
}

class _WebRequestsPageState extends State<WebRequestsPage> {
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
              text: context.appLocale.applications,
              onTap: () {
                context.router.pop();
              },
            ),
            const Expanded(
              child: WebView(
                initialUrl: 'https://shd.narxoz.kz/',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
