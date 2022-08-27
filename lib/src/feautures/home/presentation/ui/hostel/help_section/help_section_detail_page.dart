import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_detail_cubit.dart';

class HelpSectionDetailPage extends StatefulWidget {
  final int id;
  const HelpSectionDetailPage({
    required this.id,
    super.key,
  });

  @override
  State<HelpSectionDetailPage> createState() => _HelpSectionDetailPageState();
}

class _HelpSectionDetailPageState extends State<HelpSectionDetailPage> {
  @override
  void initState() {
    BlocProvider.of<HelpSectionDetailCubit>(context)
        .getHelpSections(helpSectionId: widget.id);
    // print(context.appLocale.localeName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar:
      body: SafeArea(
        child: BlocConsumer<HelpSectionDetailCubit, HelpSectionDetailState>(
          listener: (context, state) {
            state.whenOrNull(
              errorState: (message) {
                buildErrorCustomSnackBar(context, message);
              },
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                BlocBuilder<HelpSectionDetailCubit, HelpSectionDetailState>(
                  builder: (context, state) {
                    return CustomAppBar(
                      onTap: () {
                        context.router.pop();
                      },
                      text: state.maybeWhen(
                        loadedState: (section) => section.name,
                        orElse: () => context.appLocale.helpSection,
                      ),
                      isSafeArea: true,
                    );
                  },
                ),
                Expanded(
                  child: BlocConsumer<HelpSectionDetailCubit,
                      HelpSectionDetailState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return state.maybeWhen(
                        loadedState: (HelpSectionDTO section) {
                          return ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              Html(
                                data: '${section.content}',
                                // style: AppTextStyles.gilroy20w500,
                              ),
                            ],
                          );
                        },
                        orElse: () {
                          return const Center(
                            child: kWaveLoader,
                          );
                        },
                      );
                    },
                  ),
                ),
                // const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
