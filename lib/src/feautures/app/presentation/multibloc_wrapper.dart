import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_detail_cubit.dart';

class MultiblocWrapper extends StatelessWidget {
  final Widget child;
  const MultiblocWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => sl<AppBloc>(),
        ),
        BlocProvider<HelpSectionCubit>(
          create: (_) => sl<HelpSectionCubit>(),
        ),
        BlocProvider<HelpSectionDetailCubit>(
          create: (_) => sl<HelpSectionDetailCubit>(),
        ),
      ],
      child: child,
    );
  }
}
