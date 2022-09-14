import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_snackbars.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';
import 'package:narxoz/src/feautures/profile/presentation/bloc/profile_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          errorState: (String message) {
            buildErrorCustomSnackBar(context, message);
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: ColoredBox(
            color: AppColors.kWhite,
            child: Column(
              children: [
                const BaseAppBar(),
                state.maybeWhen(
                  loadedState: (UserDTO user) {
                    return Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Spacer(),
                              Container(
                                height: 154,
                                width: 154,
                                decoration: const BoxDecoration(
                                  // color: Colors.green,
                                  // borderRadius: BorderRadius.circular(100),
                                  shape: BoxShape.circle,
                                ),
                                // alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: user.avatar != null
                                      ? user.avatar!.contains('.svg')
                                          ? SvgPicture.network(
                                              user.avatar!,
                                              fit: BoxFit.cover,
                                            )
                                          : Image.network(
                                              user.avatar!,
                                              fit: BoxFit.cover,
                                              loadingBuilder: (context, child, loadingProgress) {
                                                if (loadingProgress == null) {
                                                  return child;
                                                }
                                                return Center(
                                                  child: CircularProgressIndicator(
                                                    color: AppColors.kRedPrimary,
                                                    value: loadingProgress.expectedTotalBytes != null
                                                        ? loadingProgress.cumulativeBytesLoaded /
                                                            loadingProgress.expectedTotalBytes!
                                                        : null,
                                                  ),
                                                );
                                              },
                                              errorBuilder: (
                                                BuildContext context,
                                                Object exception,
                                                StackTrace? stackTrace,
                                              ) {
                                                return const Center(child: Text('Image Error'));
                                              },
                                            )
                                      : Image.asset(
                                          'assets/images/profile.png',
                                          fit: BoxFit.cover,
                                        ),
                                  // child: Image.network(
                                  //   'https://pbs.twimg.com/media/FJ96vOQWUAwbIah?format=jpg&name=large',
                                  //   fit: BoxFit.cover,
                                  //   // width: 154,
                                  //   // height: 154,
                                  //   loadingBuilder: (context, child, loadingProgress) {
                                  //     if (loadingProgress == null) {
                                  //       return child;
                                  //     }
                                  //     return Center(
                                  //       child: CircularProgressIndicator(
                                  //         color: AppColors.kRedPrimary,
                                  //         value: loadingProgress.expectedTotalBytes != null
                                  //             ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                  //             : null,
                                  //       ),
                                  //     );
                                  //   },
                                  //   errorBuilder: (
                                  //     BuildContext context,
                                  //     Object exception,
                                  //     StackTrace? stackTrace,
                                  //   ) {
                                  //     return Center(
                                  //       child: Text(context.appLocale.imageError),
                                  //     );
                                  //   },
                                  // ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          // Container(
                          //   height: 154,
                          //   width: 154,
                          //   decoration: const BoxDecoration(
                          //     color: Colors.green,
                          //     shape: BoxShape.circle,
                          //   ),
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(100),
                          //     child: CachedNetworkImage(
                          //       imageUrl:
                          //           'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o?format=png&name=large',
                          //       fit: BoxFit.cover,
                          //       placeholder: (context, url) => Center(
                          //         child: CircularProgressIndicator(
                          //             // value: downloadProgress.progress,
                          //             ),
                          //       ),
                          //       errorWidget: (context, url, error) => const Icon(Icons.error),
                          //     ),
                          //   ),
                          // ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 23),
                              Text(
                                '${user.fullName}',
                                style: AppTextStyles.gilroy24w500,
                              ),
                              const SizedBox(height: 23),
                              Text(
                                'ID: ${user.login}',
                                style: AppTextStyles.gilroy16w500Red,
                              ),
                              const SizedBox(height: 33),
                              buildRow(
                                text: context.appLocale.dateOfBirth,
                                value: user.dateOfBirth ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: context.appLocale.email,
                                value: user.email ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: context.appLocale.gender,
                                value: user.gender ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: context.appLocale.formOfTraining,
                                value: user.formOfTraining ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: 'GPA',
                                value: user.gpa ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: context.appLocale.level,
                                value: user.level ?? context.appLocale.notSpecified,
                              ),
                              const Divider(
                                color: Color(0xff909090),
                              ),
                              buildRow(
                                text: context.appLocale.program,
                                value: user.program ?? context.appLocale.notSpecified,
                              ),
                              // const Divider(
                              //   color: Color(0xff909090),
                              // ),
                              // buildRow(
                              //   text: context.appLocale.phoneNumber,
                              //   value: user.telephone as String? ?? context.appLocale.notSpecified,
                              // ),

                              // buildRow(
                              //   text: context.appLocale.typeOfGrant,
                              //   value: 'Гос грант',
                              // ),
                              // const Divider(
                              //   color: Color(0xff909090),
                              // ),

                              // buildRow(text: context.appLocale.iin, value: '9887887845'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  orElse: () => const Spacer(),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(12),
                  child: TextButton(
                    onPressed: () {
                      BlocProvider.of<AppBloc>(context).add(const AppEvent.exiting());
                    },
                    child: Text(
                      context.appLocale.logOutOfAccount,
                      style: AppTextStyles.gilroy15w500Red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildRow({
    required String text,
    required String value,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.gilroy15w500,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.gilroy15w500Red,
          ),
        ),
      ],
    );
  }
}
