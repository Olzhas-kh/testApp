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
            const Expanded(
              child: WebView(
                initialUrl: 'https://canvas.narxoz.kz/login/canvas',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
