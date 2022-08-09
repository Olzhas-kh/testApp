import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/banners_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/chapters_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: ListView(
        children: [
          const BaseAppBar(),
          const BannersWidget(),
          const SizedBox(height: 27),
          ChaptersWidget()
        ],
      ),
    );
  }
}
