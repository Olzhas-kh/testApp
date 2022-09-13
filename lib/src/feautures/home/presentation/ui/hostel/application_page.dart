import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_loaders.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/question_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_verify_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/accept_privacy_widget.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_appbar.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/file_picker_widget.dart';

// enum GenderCharacter {
//   male,
//   female,
// }

// enum Training {
//   grant,
//   paid,
// }

class ApplicationPage extends StatefulWidget {
  final int catId;
  const ApplicationPage({
    super.key,
    required this.catId,
  });

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController nameController = TextEditingController();
  // TextEditingController surnameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController binController = TextEditingController();
  // GenderCharacter? genderCharacter = GenderCharacter.male;
  // TextEditingController phoneController = TextEditingController();
  // TextEditingController dateController = TextEditingController();
  // Training? trainingForm = Training.grant;

  InputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.kRedPrimary),
    borderRadius: BorderRadius.circular(12),
  );

  List<TextEditingController> controllers = [];
  MaskTextInputFormatter dateFormatter = MaskTextInputFormatter(
    mask: '####-##-##',
    filter: {"#": RegExp('[0-9]')},
  );
  List<AnswerPayload> answers = [];
  bool isAcceptedPrivacy = false;

  @override
  void initState() {
    BlocProvider.of<ApplicationCubit>(context).getCategoryQuestions(catId: widget.catId);
    BlocProvider.of<ApplicationVerifyCubit>(context).resetStates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // appBar:
        body: SafeArea(
          child: BlocConsumer<ApplicationCubit, ApplicationState>(
            listener: (context, state) {
              state.whenOrNull(
                loadedState: (questions) {
                  for (int i = 0; i < questions.length; i++) {
                    controllers.add(TextEditingController());
                    if (questions[i].fieldType == '5') {
                      answers.add(
                        AnswerPayload(
                          questionID: questions[i].id,
                          value: null,
                          fieldType: questions[i].fieldType,
                          isFile: true,
                        ),
                      );
                    } else {
                      answers.add(
                        AnswerPayload(
                          questionID: questions[i].id,
                          value: null,
                          fieldType: questions[i].fieldType,
                          isFile: false,
                        ),
                      );
                    }
                  }
                },
                errorState: (String message) {
                  buildErrorCustomSnackBar(context, message);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loadedState: (List<QuestionDTO> questions) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        ApplicationAppBar(
                          onTap: () {
                            context.router.pop();
                          },
                          text: context.appLocale.applicationSubmission,
                          isSafeArea: true,
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: questions.length,
                                itemBuilder: (context, index) {
                                  switch (questions[index].fieldType) {
                                    case '1':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText: '${questions[index].displayName}',
                                            maxLines: 1,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                            keyboardType: TextInputType.number,
                                          ),
                                        ],
                                      );
                                    case '2':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText: '${questions[index].displayName}',
                                            maxLines: 1,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                          ),
                                        ],
                                      );
                                    case '3':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText: '${questions[index].displayName}',
                                            maxLines: 5,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                          ),
                                        ],
                                      );
                                    case '4':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText: '1997-09-18',
                                            maxLines: 1,
                                            keyboardType: TextInputType.datetime,
                                            inputFormatters: [dateFormatter],
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                            suffixIcon: InkWell(
                                              onTap: () async {
                                                final DateTime? pickedDate = await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return Theme(
                                                      data: Theme.of(context).copyWith(
                                                        colorScheme: const ColorScheme.light(
                                                          primary: AppColors.kRedPrimary, // header background color
                                                        ),
                                                        textButtonTheme: TextButtonThemeData(
                                                          style: TextButton.styleFrom(
                                                            foregroundColor: Colors.red, // button text color
                                                          ),
                                                        ),
                                                      ),
                                                      child: child!,
                                                    );
                                                  },
                                                );

                                                if (pickedDate != null) {
                                                  final String formattedDate =
                                                      DateFormat('yyyy-MM-dd').format(pickedDate);

                                                  controllers[index].text = formattedDate;
                                                }
                                              },
                                              child: Container(
                                                height: 16,
                                                width: 16,
                                                padding: const EdgeInsets.all(14),
                                                child: SvgPicture.asset(
                                                  'assets/icons/calendar.svg',
                                                  height: 14,
                                                  width: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    case '5':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          FilePickerWidget(
                                            file: answers[index].value as File?,
                                            callback: (File? lFile) {
                                              answers[index].value = lFile;
                                              setState(() {});
                                            },
                                          ),
                                          // Row(
                                          //   children: [
                                          //     const SizedBox(
                                          //       width: 20,
                                          //     ),
                                          //     InkWell(
                                          //       onTap: () async {
                                          //         final FilePickerResult? result = await FilePicker.platform.pickFiles(
                                          //           type: FileType.custom,
                                          //           allowedExtensions: ['pdf', 'jpg', 'png'],
                                          //         );

                                          //         if (!mounted) return;
                                          //         if (result != null) {
                                          //           File file = File(
                                          //             result.files.single.path!,
                                          //           );

                                          //           if (Platform.isIOS) {
                                          //             final documentPath =
                                          //                 (await getApplicationDocumentsDirectory()).path;
                                          //             file =
                                          //                 await file.copy('$documentPath/${path.basename(file.path)}');
                                          //           }
                                          //           answers[index].value = file;
                                          //         } else {
                                          //           // buildErrorCustomSnackBar(
                                          //           //   context,
                                          //           //   'File Picker Error',
                                          //           // );
                                          //         }
                                          //         setState(() {});
                                          //       },
                                          //       child: Container(
                                          //         height: 80,
                                          //         width: 80,
                                          //         decoration: BoxDecoration(
                                          //           border: Border.all(
                                          //             color: AppColors.kGray2,
                                          //           ),
                                          //           borderRadius: BorderRadius.circular(
                                          //             10,
                                          //           ),
                                          //         ),
                                          //         alignment: Alignment.center,
                                          //         child: answers[index].value != null
                                          //             ? Text(
                                          //                 (answers[index].value as File).path.substring(
                                          //                       (answers[index].value as File).path.length - 3,
                                          //                     ),
                                          //                 style: const TextStyle(
                                          //                   fontSize: 30,
                                          //                   fontWeight: FontWeight.w600,
                                          //                 ),
                                          //               )
                                          //             : const Icon(
                                          //                 Icons.add,
                                          //                 color: AppColors.kGray2,
                                          //               ),
                                          //       ),
                                          //     ),
                                          //     const SizedBox(
                                          //       width: 16,
                                          //     ),
                                          //     Expanded(
                                          //       child: Text(
                                          //         '${context.appLocale.noteAttachSupportingDocumentsFormatPdfJpg} '
                                          //         '${context.appLocale.maximumFileSize}: 200kB',
                                          //         style: AppTextStyles.rubik14w400Red,
                                          //       ),
                                          //     ),
                                          //     const SizedBox(
                                          //       width: 20,
                                          //     ),
                                          //   ],
                                          // ),
                                        ],
                                      );
                                    case '6':
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          Container(
                                            // height: 86,
                                            width: context.screenSize.width,
                                            // padding: const EdgeInsets.symmetric(horizontal: 12),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColors.kRedPrimary,
                                              ),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              physics: const NeverScrollableScrollPhysics(),
                                              itemCount: questions[index].options?.length,
                                              itemBuilder: (context, innerIndex) {
                                                return RadioListTile<String>(
                                                  contentPadding: EdgeInsets.zero,
                                                  title: Text(
                                                    '${questions[index].options?[innerIndex].displayName}',
                                                  ),
                                                  value: '${questions[index].options?[innerIndex].id}',
                                                  groupValue: controllers[index].text,
                                                  activeColor: AppColors.kRedPrimary,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      controllers[index].text = value.toString();
                                                    });
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      );
                                    default:
                                      return const SizedBox();
                                  }
                                },
                                separatorBuilder: (context, index) => const SizedBox(height: 16),
                              ),

                              ///
                              const SizedBox(height: 16),
                              AcceptPrivacyWidget(
                                isAcceptedPrivacy: isAcceptedPrivacy,
                                callBack: (bool b) {
                                  setState(() {
                                    isAcceptedPrivacy = b;
                                  });
                                },
                                fromApplicationPage: true,
                              ),
                              // Row(
                              //   children: [
                              //     const SizedBox(width: 12),
                              //     InkWell(
                              //       onTap: () {
                              //         setState(() {
                              //           isAcceptedPrivacy = !isAcceptedPrivacy;
                              //         });
                              //       },
                              //       child: Container(
                              //         height: 30,
                              //         width: 30,
                              //         padding: const EdgeInsets.all(5),
                              //         decoration: BoxDecoration(
                              //           border: Border.all(
                              //             color: AppColors.kRedPrimary,
                              //           ),
                              //           borderRadius: BorderRadius.circular(5),
                              //         ),
                              //         child: isAcceptedPrivacy
                              //             ? Container(
                              //                 width: 20,
                              //                 height: 20,
                              //                 decoration: BoxDecoration(
                              //                   color: AppColors.kRedPrimary,
                              //                   borderRadius: BorderRadius.circular(5),
                              //                 ),
                              //               )
                              //             : const SizedBox(),
                              //       ),
                              //     ),
                              //     const SizedBox(width: 15),
                              //     RichText(
                              //       text: TextSpan(
                              //         text: 'Согласен с ',
                              //         style: AppTextStyles.gilroy15w500,
                              //         children: [
                              //           TextSpan(
                              //             text: 'условиями заселения',
                              //             style: AppTextStyles.gilroy15w500RedUnderline,
                              //             recognizer: TapGestureRecognizer()
                              //               ..onTap = () {
                              //                 context.router.push(
                              //                   SettlementConditionsPageRoute(
                              //                     text: MockHelpSection.settlementConditionBody,
                              //                   ),
                              //                 );
                              //               },
                              //           )
                              //         ],
                              //       ),
                              //     ),
                              //   ],
                              // ),

                              ///
                              const SizedBox(height: 34),
                              BlocConsumer<ApplicationVerifyCubit, ApplicationVerifyState>(
                                listener: (context, state) {
                                  state.whenOrNull(
                                    loadedState: (
                                      int orderId,
                                    ) {
                                      // context.router.push(
                                      //   DormCardPageRoute(
                                      //     // answers: answers,
                                      //     // catId: catId,
                                      //     orderId: ,
                                      //     gender: gender,
                                      //   ),
                                      // );
                                      context.router.push(
                                        ApplicationSuccessPageRoute(
                                          orderId: orderId,
                                        ),
                                      );
                                    },
                                    errorState: (String message) {
                                      buildErrorCustomSnackBar(
                                        context,
                                        message,
                                      );
                                    },
                                  );
                                },
                                builder: (context, state) {
                                  return CustomButton(
                                    height: 48,
                                    body: state.maybeWhen(
                                      loadingState: () => const Center(
                                        child: CircularProgressIndicator(color: AppColors.kRedPrimary),
                                      ),
                                      orElse: () {
                                        return Text(
                                          context.appLocale.next,
                                          style: AppTextStyles.gilroy16w600White,
                                        );
                                      },
                                    ),
                                    onClick: state.maybeWhen(
                                      loadingState: () => false,
                                      orElse: () => true,
                                    )
                                        ? () {
                                            if (_formKey.currentState!.validate()) {
                                              if (!isAcceptedPrivacy) {
                                                buildErrorCustomSnackBar(
                                                  context,
                                                  'Вы не согласны с условиями заселения',
                                                );
                                                return;
                                              }

                                              String gender = 'male';
                                              for (int i = 0; i < controllers.length; i++) {
                                                if (!(answers[i].isFile ?? false)) {
                                                  answers[i].value = controllers[i].text;
                                                }

                                                if (controllers[i].text == 'male' || controllers[i].text == 'female') {
                                                  gender = controllers[i].text;
                                                }

                                                if (answers[i].value == null) {
                                                  buildErrorCustomSnackBar(context, 'Не все поля заполнены');
                                                  return;
                                                }
                                              }
                                              log(answers.toString());
                                              BlocProvider.of<ApplicationVerifyCubit>(
                                                context,
                                              ).createApplication(
                                                catId: widget.catId,
                                                answers: answers,
                                                gender: gender,
                                              );
                                            }
                                          }
                                        : null,
                                    style: redButtonStyle(),
                                  );
                                },
                              ),
                              const SizedBox(height: 40)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => const Center(
                  child: kWaveLoader,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
