import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BannersDetailPage extends StatefulWidget {
  final String link;
  const BannersDetailPage({
    required this.link,
    super.key,
  });

  @override
  State<BannersDetailPage> createState() => _BannersDetailPageState();
}

class _BannersDetailPageState extends State<BannersDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              isSafeArea: true,
              text: '',
              onTap: () {
                context.router.pop();
              },
            ),
            Expanded(
              child: WebView(
                initialUrl: widget.link,
                onPageStarted: (String value) {
                  log('onPageStarted: $value');
                  // if (value.startsWith(widget.payment.requestUrl.toString()) ||
                  //     value == widget.payment.requestUrl.toString()) {
                  //   context.router.push(SuccessPageRoute());
                  // }
                  // if (value.startsWith(widget.payment.failureUrl.toString()) ||
                  //     value == widget.payment.failureUrl.toString()) {
                  //   context.router.pop();
                  // }
                },
                onProgress: (value) {
                  log('onProgress value is $value');
                },
                onPageFinished: (String value) async {
                  log('onPageFinished: $value');

                  // if (value.startsWith('https://epay-go.forte.kz/?status=loading3ds')) {
                  //   if (await _webViewController.canGoBack()) {
                  //     _webViewController.goBack();
                  //   }
                  // }
                },
                // onWebViewCreated: (WebViewController webViewController) {
                //   // _controller.complete(webViewController);
                //   _webViewController = webViewController;
                // },

                // key: _key,
                javascriptMode: JavascriptMode.unrestricted,
                // onWebResourceError: (WebResourceError error) {
                //   log(error.toString(), name: 'onWebResourceError', error: error);
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
