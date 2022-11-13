import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/constants/constants.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/banners_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/banners_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/chapters_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: SafeArea(
        child: SmartRefresher(
          controller: _refreshController,
          header: refreshClassicHeader,
          onRefresh: () {
            BlocProvider.of<BannersCubit>(context).getBanners();
            _refreshController.refreshCompleted();
          },
          child: ListView(
            children: const [
              BaseAppBar(),
              BannersWidget(),
              SizedBox(height: 27),
              ChaptersWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
