import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
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
import 'package:narxoz/src/feautures/home/presentation/ui/help_section/mock_help_section.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/application_appbar.dart';

enum GenderCharacter {
  male,
  female,
}

enum Training {
  grant,
  paid,
}

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
    BlocProvider.of<ApplicationCubit>(context)
        .getCategoryQuestions(catId: widget.catId);
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
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: questions.length,
                                itemBuilder: (context, index) {
                                  switch (questions[index].fieldType) {
                                    case '1':
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText:
                                                '${questions[index].displayName}',
                                            maxLines: 1,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                            keyboardType: TextInputType.number,
                                          ),
                                        ],
                                      );
                                    case '2':
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText:
                                                '${questions[index].displayName}',
                                            maxLines: 1,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                          ),
                                        ],
                                      );
                                    case '3':
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          CustomTextField(
                                            borderRadius: 12,
                                            controller: controllers[index],
                                            hintText:
                                                '${questions[index].displayName}',
                                            maxLines: 5,
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                          ),
                                        ],
                                      );
                                    case '4':
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            keyboardType:
                                                TextInputType.datetime,
                                            inputFormatters: [dateFormatter],
                                            validator: notEmptyValidator,
                                            enabledBorder: enabledBorder,
                                            suffixIcon: InkWell(
                                              onTap: () async {
                                                final DateTime? pickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2050),
                                                );

                                                if (pickedDate != null) {
                                                  final String formattedDate =
                                                      DateFormat('yyyy-MM-dd')
                                                          .format(pickedDate);

                                                  controllers[index].text =
                                                      formattedDate;
                                                }
                                              },
                                              child: Container(
                                                height: 16,
                                                width: 16,
                                                padding:
                                                    const EdgeInsets.all(14),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${questions[index].displayName}',
                                            style: AppTextStyles.gilroy16w500,
                                          ),
                                          const SizedBox(height: 12),
                                          Row(
                                            children: [
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  final FilePickerResult?
                                                      result = await FilePicker
                                                          .platform
                                                          .pickFiles(
                                                    type: FileType.custom,
                                                    allowedExtensions: [
                                                      'pdf',
                                                      'jpg',
                                                      'png'
                                                    ],
                                                  );

                                                  if (!mounted) return;
                                                  if (result != null) {
                                                    final File file = File(
                                                      result.files.single.path!,
                                                    );
                                                    answers[index].value = file;
                                                  } else {
                                                    buildErrorCustomSnackBar(
                                                      context,
                                                      'File Picker Error',
                                                    );
                                                  }
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  height: 80,
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: AppColors.kGray2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: AppColors.kGray2,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  '${context.appLocale.noteAttachSupportingDocumentsFormatPdfJpg} '
                                                  '${context.appLocale.maximumFileSize}: 200kB',
                                                  style: AppTextStyles
                                                      .rubik14w400Red,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    case '6':
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: questions[index]
                                                  .options
                                                  ?.length,
                                              itemBuilder:
                                                  (context, innerIndex) {
                                                return RadioListTile<String>(
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  title: Text(
                                                    '${questions[index].options?[innerIndex].displayName}',
                                                  ),
                                                  value:
                                                      '${questions[index].options?[innerIndex].id}',
                                                  groupValue:
                                                      controllers[index].text,
                                                  activeColor:
                                                      AppColors.kRedPrimary,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      controllers[index].text =
                                                          value.toString();
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
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 16),
                              ),

                              ///
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const SizedBox(width: 12),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isAcceptedPrivacy = !isAcceptedPrivacy;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.kRedPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: isAcceptedPrivacy
                                          ? Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: AppColors.kRedPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            )
                                          : const SizedBox(),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Согласен с ',
                                      style: AppTextStyles.gilroy15w500,
                                      children: [
                                        TextSpan(
                                          text: 'условиями заселения',
                                          style: AppTextStyles
                                              .gilroy15w500RedUnderline,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              context.router.push(
                                                SettlementConditionsPageRoute(
                                                  text: MockHelpSection
                                                      .settlementConditionBody,
                                                ),
                                              );
                                            },
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              ///
                              const SizedBox(height: 34),
                              CustomButton(
                                height: 48,
                                body: Text(
                                  context.appLocale.next,
                                  style: AppTextStyles.gilroy16w600White,
                                ),
                                onClick: () {
                                  if (_formKey.currentState!.validate()) {
                                    if (!isAcceptedPrivacy) {
                                      buildErrorCustomSnackBar(
                                          context, 'message');
                                      return;
                                    }
                                  }
                                  for (int i = 0; i < controllers.length; i++) {
                                    log('$i, ${controllers[i].text}');
                                  }
                                },
                                style: redButtonStyle(),
                              ),
                              const SizedBox(height: 40)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                initialState: () {
                  return Form(
                    key: _formKey,
                    child: ListView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const Text(
                              //   'Имя',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: nameController,
                              //   hintText: 'Введите имя',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              // ///
                              // const Text(
                              //   'Фамилия',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: nameController,
                              //   hintText: 'Введите фамилию',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'Почта',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: nameController,
                              //   hintText: 'Введите эл почту',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'Пол',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // Container(
                              //   // height: 86,
                              //   width: context.screenSize.width,
                              //   // padding: const EdgeInsets.symmetric(horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     border:
                              //         Border.all(color: AppColors.kRedPrimary),
                              //     borderRadius: BorderRadius.circular(12),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       RadioListTile<GenderCharacter>(
                              //         contentPadding: EdgeInsets.zero,
                              //         title: const Text('Мужской'),
                              //         value: GenderCharacter.male,
                              //         groupValue: genderCharacter,
                              //         activeColor: AppColors.kRedPrimary,
                              //         onChanged: (GenderCharacter? value) {
                              //           setState(() {
                              //             genderCharacter = value;
                              //           });
                              //         },
                              //       ),
                              //       RadioListTile<GenderCharacter>(
                              //         contentPadding: EdgeInsets.zero,
                              //         title: const Text('Женский'),
                              //         activeColor: AppColors.kRedPrimary,
                              //         value: GenderCharacter.female,
                              //         groupValue: genderCharacter,
                              //         onChanged: (GenderCharacter? value) {
                              //           setState(() {
                              //             genderCharacter = value;
                              //           });
                              //         },
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'ИНН',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: binController,
                              //   hintText: 'Введите ИИН',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'Номер телефона',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: phoneController,
                              //   hintText: '+7',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'Дата рождения ',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // CustomTextField(
                              //   borderRadius: 12,
                              //   controller: dateController,
                              //   hintText: '10.09.1986 ',
                              //   maxLines: 1,
                              //   validator: notEmptyValidator,
                              //   enabledBorder: enabledBorder,
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              // const Text(
                              //   'Форма обучения',
                              //   style: AppTextStyles.gilroy16w500,
                              // ),
                              // const SizedBox(height: 12),
                              // Container(
                              //   // height: 86,
                              //   width: context.screenSize.width,
                              //   // padding: const EdgeInsets.symmetric(horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     border:
                              //         Border.all(color: AppColors.kRedPrimary),
                              //     borderRadius: BorderRadius.circular(12),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       RadioListTile<Training>(
                              //         contentPadding: EdgeInsets.zero,
                              //         title: const Text('Грант'),
                              //         value: Training.grant,
                              //         groupValue: trainingForm,
                              //         activeColor: AppColors.kRedPrimary,
                              //         onChanged: (Training? value) {
                              //           setState(() {
                              //             trainingForm = value;
                              //           });
                              //         },
                              //       ),
                              //       RadioListTile<Training>(
                              //         contentPadding: EdgeInsets.zero,
                              //         title: const Text('Платный'),
                              //         activeColor: AppColors.kRedPrimary,
                              //         value: Training.paid,
                              //         groupValue: trainingForm,
                              //         onChanged: (Training? value) {
                              //           setState(() {
                              //             trainingForm = value;
                              //           });
                              //         },
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(height: 16),

                              ///
                              const Text(
                                'Справка об инвалидности',
                                style: AppTextStyles.gilroy16w500,
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.kGray2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: AppColors.kGray2,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Примечание: прикрепите подтверждающие документы, формат: pdf, jpg '
                                      'Максимальный размер файла: 200kB',
                                      style: AppTextStyles.rubik14w400Red,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),

                              // ///
                              // Row(
                              //   children: [
                              //     const SizedBox(width: 12),
                              //     Container(
                              //       height: 30,
                              //       width: 30,
                              //       decoration: BoxDecoration(
                              //         border: Border.all(
                              //           color: AppColors.kRedPrimary,
                              //         ),
                              //         borderRadius: BorderRadius.circular(5),
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
                              //             style: AppTextStyles
                              //                 .gilroy15w500RedUnderline,
                              //             recognizer: TapGestureRecognizer()
                              //               ..onTap = () {
                              //                 context.router.push(
                              //                   SettlementConditionsPageRoute(
                              //                     text: MockHelpSection
                              //                         .settlementConditionBody,
                              //                   ),
                              //                 );
                              //               },
                              //           )
                              //         ],
                              //       ),
                              //     ),
                              //   ],
                              // ),

                              // ///
                              // const SizedBox(height: 34),
                              // CustomButton(
                              //   height: 48,
                              //   body: const Text(
                              //     'Далее',
                              //     style: AppTextStyles.gilroy16w600White,
                              //   ),
                              //   onClick: () {},
                              //   style: redButtonStyle(),
                              // ),
                              // const SizedBox(height: 40)
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
