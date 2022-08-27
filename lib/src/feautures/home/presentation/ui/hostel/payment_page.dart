import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();
    print(widget.payment);
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
              text: "Оплата",
              onTap: () {
                context.router.pop();
              },
            ),
            Expanded(
              child: WebView(
                initialUrl: widget.payment.redirectUrl,
                onPageStarted: (String value) {
                  if (value.startsWith(widget.payment.requestUrl.toString()) ||
                      value == widget.payment.requestUrl.toString()) {
                    context.router.push(SuccessPageRoute());
                  }
                },
                onProgress: (value) {
                  log('value is $value');
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
