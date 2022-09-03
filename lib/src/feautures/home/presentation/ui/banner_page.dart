import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/constants.dart';
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
            Expanded(
              child: WebView(
                initialUrl: NarxozLinks.newBannerLink,
                onPageStarted: (String value) {
                  log('onPageStarted: $value');
                  // if (value.startsWith(widget.payment.requestUrl.toString()) ||
                  //     value == widget.payment.requestUrl.toString()) {
                  //   context.router.push(SuccessPageRoute());
                  // }
                },
                onProgress: (value) {
                  log('onProgress value is $value');
                },
                onPageFinished: (String value) {
                  log('onPageFinished: $value');
                },
                // key: _key,
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
