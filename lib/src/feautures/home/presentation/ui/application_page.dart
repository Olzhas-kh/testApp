import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_textfield.dart';
import 'package:narxoz/src/feautures/app/widgets/validators.dart';
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
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController binController = TextEditingController();
  GenderCharacter? genderCharacter = GenderCharacter.male;
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  Training? trainingForm = Training.grant;

  InputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.kRedPrimary),
    borderRadius: BorderRadius.circular(12),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // appBar:
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                ApplicationAppBar(
                  onTap: () {
                    context.router.pop();
                  },
                  text: 'Подача заявки',
                  isSafeArea: true,
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Имя',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: nameController,
                        hintText: 'Введите имя',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Фамилия',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: nameController,
                        hintText: 'Введите фамилию',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Почта',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: nameController,
                        hintText: 'Введите эл почту',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Пол',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        // height: 86,
                        width: context.screenSize.width,
                        // padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kRedPrimary),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            RadioListTile<GenderCharacter>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Мужской'),
                              value: GenderCharacter.male,
                              groupValue: genderCharacter,
                              activeColor: AppColors.kRedPrimary,
                              onChanged: (GenderCharacter? value) {
                                setState(() {
                                  genderCharacter = value;
                                });
                              },
                            ),
                            RadioListTile<GenderCharacter>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Женский'),
                              activeColor: AppColors.kRedPrimary,
                              value: GenderCharacter.female,
                              groupValue: genderCharacter,
                              onChanged: (GenderCharacter? value) {
                                setState(() {
                                  genderCharacter = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'ИНН',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: binController,
                        hintText: 'Введите ИИН',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Номер телефона',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: phoneController,
                        hintText: '+7',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Дата рождения ',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        borderRadius: 12,
                        controller: dateController,
                        hintText: '10.09.1986 ',
                        maxLines: 1,
                        validator: notEmptyValidator,
                        enabledBorder: enabledBorder,
                      ),
                      const SizedBox(height: 16),

                      ///
                      const Text(
                        'Форма обучения',
                        style: AppTextStyles.gilroy16w500,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        // height: 86,
                        width: context.screenSize.width,
                        // padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kRedPrimary),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            RadioListTile<Training>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Грант'),
                              value: Training.grant,
                              groupValue: trainingForm,
                              activeColor: AppColors.kRedPrimary,
                              onChanged: (Training? value) {
                                setState(() {
                                  trainingForm = value;
                                });
                              },
                            ),
                            RadioListTile<Training>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Платный'),
                              activeColor: AppColors.kRedPrimary,
                              value: Training.paid,
                              groupValue: trainingForm,
                              onChanged: (Training? value) {
                                setState(() {
                                  trainingForm = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

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
                              border: Border.all(color: AppColors.kGray2),
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

                      ///
                      Row(
                        children: [
                          const SizedBox(width: 12),
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          const SizedBox(width: 16),
                          RichText(
                            text: const TextSpan(
                              text: 'Согласен с ',
                              style: AppTextStyles.gilroy15w500,
                              children: [
                                TextSpan(
                                  text: 'условиями заселения',
                                  style: AppTextStyles.gilroy15w500Red,
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
                        body: const Text(
                          'Далее',
                          style: AppTextStyles.gilroy16w600White,
                        ),
                        onClick: () {},
                        style: redButtonStyle(),
                      ),
                      const SizedBox(height: 40)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
