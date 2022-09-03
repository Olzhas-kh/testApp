import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatefulWidget {
  final PaymentDTO payment;
  const PaymentPage({
    required this.payment,
    super.key,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  // TODO
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();


  @override
  void initState() {
    super.initState();
    log(widget.payment.toString());
    log(widget.payment.redirectUrl.toString());
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
              text: context.appLocale.payment,
              onTap: () {
                context.router.pop();
              },
            ),
            Expanded(
              child: WebView(
                initialUrl: widget.payment.redirectUrl,
                onPageStarted: (String value) {
                  log('onPageStarted: $value');
                  if (value.startsWith(widget.payment.requestUrl.toString()) ||
                      value == widget.payment.requestUrl.toString()) {
                    context.router.push(SuccessPageRoute());
                  }
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

// onPageStarted: https://epay-go.forte.kz/?status=loading3ds
