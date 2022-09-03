import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

//
//
// Раздел canvas на главном экране
class CanvasPage extends StatefulWidget {
  const CanvasPage({super.key});

  @override
  State<CanvasPage> createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
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
              text: 'Canvas',
              onTap: () {
                context.router.pop();
              },
            ),
            Expanded(
              child: WebView(
                initialUrl: 'https://canvas.narxoz.kz/login/canvas',
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
