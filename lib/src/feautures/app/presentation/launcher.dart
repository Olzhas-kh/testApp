import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/resources/resources.dart';

import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/presentation/base.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loading_widget.dart';
import 'package:narxoz/src/feautures/auth/presentation/ui/sign_in_page.dart';
import 'package:narxoz/src/feautures/notifications/bloc/notification_bloc.dart';

class Launcher extends StatefulWidget {
  const Launcher({super.key});

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  // MaskTextInputFormatter maskFormatter =
  //     MaskTextInputFormatter(mask: '+#(###)-###-##-##');

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    BlocProvider.of<AppBloc>(context).add(const AppEvent.checkAuth());
    BlocProvider.of<NotificationBloc>(context).add(NotificationEvent.firebaseInit(context: context));
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer<LocaleProvider>(
    //   builder: (context, model, child) {
    //     return const Base();
    //   },
    // );
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          loadingState: () {
            return const _Scaffold(child: CustomLoadingWidget());
          },
          notAuthorizedState: () {
            return const SignInPage();
          },
          errorState: (String message) {
            return const _Scaffold(child: CustomErrorLoadingWidget());
          },
          inAppState: () {
            return const Base();
          },
        );
      },
    );
  }
}

class _Scaffold extends StatelessWidget {
  final Widget child;
  const _Scaffold({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(child: child),
    );
  }
}
