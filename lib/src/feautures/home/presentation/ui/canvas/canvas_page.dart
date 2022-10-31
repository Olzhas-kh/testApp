import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_card.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    ApplicationCard(
                      title: 'Canvas',
                      onTap: () {
                        context.router.push(const CanvasWebPageRoute());
                      },
                    ),
                    const SizedBox(height: 30),
                    ApplicationCard(
                      title: context.appLocale.tasks,
                      onTap: () {
                        context.router.push(const TasksPageRoute());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
