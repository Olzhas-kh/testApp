import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:url_launcher/url_launcher.dart';

const _tag = 'PaymentPage1';

class PaymentPage1 extends StatefulWidget {
  final PaymentDTO payment;
  const PaymentPage1({
    required this.payment,
    super.key,
  });

  @override
  State<PaymentPage1> createState() => _PaymentPage1State();
}

class _PaymentPage1State extends State<PaymentPage1> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(
      allowsInlineMediaPlayback: true,
    ),
  );

  late PullToRefreshController pullToRefreshController;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    log(widget.payment.toString());
    log(widget.payment.redirectUrl.toString());

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
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
              child: Stack(
                children: [
                  InAppWebView(
                    key: webViewKey,
                    initialUrlRequest: URLRequest(
                      url: Uri.parse(widget.payment.redirectUrl!),
                    ),
                    initialOptions: options,
                    pullToRefreshController: pullToRefreshController,
                    onWebViewCreated: (controller) {
                      webViewController = controller;
                    },
                    onLoadStart: (controller, url) {
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                      
                      log('onLoadStart: $url', name: _tag);
                      if(widget.payment.failureUrl!.startsWith(url.toString())) {
                        context.router.pop();
                      }
                    },
                    androidOnPermissionRequest: (controller, origin, resources) async {
                      return PermissionRequestResponse(
                        resources: resources,
                        action: PermissionRequestResponseAction.GRANT,
                      );
                    },
                    shouldOverrideUrlLoading: (controller, navigationAction) async {
                      final uri = navigationAction.request.url!;

                      if (!["http", "https", "file", "chrome", "data", "javascript", "about"].contains(uri.scheme)) {
                        if (await canLaunchUrl(Uri.parse(url))) {
                          // Launch the App
                          await launchUrl(
                            Uri.parse(url),
                          );
                          // and cancel the request
                          return NavigationActionPolicy.CANCEL;
                        }
                      }

                      return NavigationActionPolicy.ALLOW;
                    },
                    onLoadStop: (controller, url) async {
                      pullToRefreshController.endRefreshing();
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onLoadError: (controller, url, code, message) {
                      pullToRefreshController.endRefreshing();
                    },
                    onProgressChanged: (controller, progress) {
                      if (progress == 100) {
                        pullToRefreshController.endRefreshing();
                      }
                      setState(() {
                        this.progress = progress / 100;
                        urlController.text = url;
                      });
                    },
                    onUpdateVisitedHistory: (controller, url, androidIsReload) {
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onConsoleMessage: (controller, consoleMessage) {
                      log(consoleMessage.toString(), name: _tag);
                    },
                  ),
                  if (progress < 1.0) LinearProgressIndicator(value: progress),
                ],
              ),

              // child: WebView(
              //   initialUrl: widget.payment.redirectUrl,
              //   onPageStarted: (String value) {
              //     log('onPageStarted: $value');
              //     if (value.startsWith(widget.payment.requestUrl.toString()) ||
              //         value == widget.payment.requestUrl.toString()) {
              //       context.router.push(SuccessPageRoute());
              //     }
              //     if (value.startsWith(widget.payment.failureUrl.toString()) ||
              //         value == widget.payment.failureUrl.toString()) {
              //       context.router.pop();
              //     }
              //   },
              //   onProgress: (value) {
              //     log('onProgress value is $value');
              //   },
              //   onPageFinished: (String value) async {
              //     log('onPageFinished: $value');

              //     if (value.startsWith('https://epay-go.forte.kz/?status=loading3ds')) {
              //       if (await _webViewController.canGoBack()) {
              //         _webViewController.goBack();
              //       }
              //     }
              //   },
              //   onWebViewCreated: (WebViewController webViewController) {
              //     // _controller.complete(webViewController);
              //     _webViewController = webViewController;
              //   },

              //   // key: _key,
              //   javascriptMode: JavascriptMode.unrestricted,
              //   onWebResourceError: (WebResourceError error) {
              //     log(error.toString(), name: 'onWebResourceError', error: error);
              //   },
              // ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Icon(Icons.arrow_back),
                  onPressed: () {
                    webViewController?.goBack();
                  },
                ),
                ElevatedButton(
                  child: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    webViewController?.goForward();
                  },
                ),
                ElevatedButton(
                  child: const Icon(Icons.refresh),
                  onPressed: () {
                    webViewController?.reload();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// onPageStarted: https://epay-go.forte.kz/?status=loading3ds
