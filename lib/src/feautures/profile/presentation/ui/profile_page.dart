import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/presentation/base_appbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: AppColors.kWhite,
        child: Column(
          children: [
            const BaseAppBar(),
            Expanded(
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
                          color: Colors.green,
                          // borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.circle,
                        ),
                        // alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://pbs.twimg.com/media/FJ96vOQWUAwbIah?format=jpg&name=large',
                            fit: BoxFit.cover,
                            // width: 154,
                            // height: 154,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.kRedPrimary,
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
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
                              return Center(
                                child: Text(context.appLocale.imageError),
                              );
                            },
                          ),
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
                      const Text(
                        'Арман Базарбай',
                        style: AppTextStyles.gilroy24w500,
                      ),
                      const SizedBox(height: 23),
                      const Text(
                        'ID: 1982103121',
                        style: AppTextStyles.gilroy16w500Red,
                      ),
                      const SizedBox(height: 33),
                      buildRow(text: 'Дата рождения', value: '15.12.2000'),
                      const Divider(
                        color: Color(0xff909090),
                      ),
                      buildRow(text: 'Почта', value: 'arman@gmail.com'),
                      const Divider(
                        color: Color(0xff909090),
                      ),
                      buildRow(text: 'Номер телефона', value: '87072858285'),
                      const Divider(
                        color: Color(0xff909090),
                      ),
                      buildRow(text: 'Тип гранта', value: 'Гос грант'),
                      const Divider(
                        color: Color(0xff909090),
                      ),
                      buildRow(text: 'GPA', value: '3.4'),
                      const Divider(
                        color: Color(0xff909090),
                      ),
                      buildRow(text: 'ИИН', value: '9887887845'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
