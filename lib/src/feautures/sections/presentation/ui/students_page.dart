import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/sections/data/model/document_dto.dart';
import 'package:narxoz/src/feautures/sections/presentation/bloc/students_cubit.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  @override
  void initState() {
    final cubit = BlocProvider.of<StudentsCubit>(context);
    cubit.state.maybeWhen(
      // loadedState: (List<HelpSectionDTO> sections) {},
      orElse: () {
        cubit.getDocumentCats();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                context.router.pop();
              },
              text: context.appLocale.students,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocConsumer<StudentsCubit, StudentsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    errorState: (String message) {
                      buildErrorCustomSnackBar(context, message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<DocumentDTO> documentCats) {
                      return ListView.separated(
                        // shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
                        itemCount: documentCats.length,
                        itemBuilder: (context, index) {
                          return DecoratedBox(
                            decoration: const BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                            ),
                            child: CustomButton(
                              height: 48,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      documentCats[index].name ?? context.appLocale.notSpecified,
                                      style: AppTextStyles.gilroy16w600,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.kRedPrimary,
                                  ),
                                ],
                              ),
                              onClick: () {
                                context.router.push(
                                  DocumentsPageRoute(
                                    title: documentCats[index].name ?? '',
                                    documentCatId: documentCats[index].id,
                                  ),
                                );
                              },
                              style: whiteButtonStyle(),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 20);
                        },
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
        ),
      ),
    );
  }
}
