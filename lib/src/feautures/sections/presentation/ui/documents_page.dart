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
import 'package:narxoz/src/feautures/sections/presentation/bloc/documents_cubit.dart';
import 'package:narxoz/src/feautures/sections/presentation/bloc/students_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentsPage extends StatefulWidget {
  final int documentCatId;
  const DocumentsPage({
    super.key,
    required this.documentCatId,
  });

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  @override
  void initState() {
    final cubit = BlocProvider.of<DocumentsCubit>(context);

    cubit.getDocumentCats(documentCatId: widget.documentCatId);

    super.initState();
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw 'Could not launch $url';
    }
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
              text: context.appLocale.helpSection,
              isSafeArea: true,
            ),
            Expanded(
              child: BlocConsumer<DocumentsCubit, DocumentsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    errorState: (String message) {
                      buildErrorCustomSnackBar(context, message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<DocumentDTO> documents) {
                      return ListView.separated(
                        // shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
                        itemCount: documents.length,
                        itemBuilder: (context, index) {
                          return DecoratedBox(
                            decoration: const BoxDecoration(
                              boxShadow: AppDecorations.dropShadow,
                            ),
                            child: CustomButton(
                              height: 68,
                              body: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      documents[index].name ?? context.appLocale.notSpecified,
                                      style: AppTextStyles.gilroy16w600,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.kRedPrimary,
                                  ),
                                ],
                              ),
                              onClick: () async {
                                final Uri? uri = Uri.tryParse(documents[index].link ?? '');
                                if (uri != null) {
                                  await _launchInBrowser(uri);
                                } else {
                                  buildErrorCustomSnackBar(context, 'context.appLocale.');
                                }
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
