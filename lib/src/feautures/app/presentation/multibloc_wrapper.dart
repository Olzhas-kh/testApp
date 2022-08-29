import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/presentation/locale_provider.dart';
import 'package:narxoz/src/feautures/auth/presentation/bloc/sign_in_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_verify_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/choose_edu_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/dorm_card_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_detail_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/hostel_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/my_application_cubit.dart';
import 'package:narxoz/src/feautures/profile/presentation/bloc/profile_cubit.dart';
import 'package:provider/provider.dart';

class MultiblocWrapper extends StatelessWidget {
  final Widget child;
  const MultiblocWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LocaleProvider(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (_) => sl<AppBloc>(),
          ),
          BlocProvider<SignInCubit>(
            create: (_) => sl<SignInCubit>(),
          ),
          BlocProvider<HelpSectionCubit>(
            create: (_) => sl<HelpSectionCubit>(),
          ),
          BlocProvider<HelpSectionDetailCubit>(
            create: (_) => sl<HelpSectionDetailCubit>(),
          ),
          BlocProvider<HostelCubit>(
            create: (_) => sl<HostelCubit>(),
          ),
          BlocProvider<ChooseEduCubit>(
            create: (_) => sl<ChooseEduCubit>(),
          ),
          BlocProvider<MyApplicationCubit>(
            create: (_) => sl<MyApplicationCubit>(),
          ),
          BlocProvider<ApplicationCubit>(
            create: (_) => sl<ApplicationCubit>(),
          ),
          BlocProvider<ApplicationVerifyCubit>(
            create: (_) => sl<ApplicationVerifyCubit>(),
          ),
          BlocProvider<DormCardCubit>(
            create: (_) => sl<DormCardCubit>(),
          ),
          // BlocProvider<DormCardVerifyCubit>(
          //   create: (_) => sl<DormCardVerifyCubit>(),
          // ),
          BlocProvider<ProfileCubit>(
            create: (_) => sl<ProfileCubit>(),
          ),
        ],
        child: child,
      ),
    );
  }
}
