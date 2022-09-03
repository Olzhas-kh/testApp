import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/banners_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/chapters_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: ListView(
        children: const [
          BaseAppBar(),
          BannersWidget(),
          SizedBox(height: 27),
          ChaptersWidget(),
        ],
      ),
    );
  }
}
