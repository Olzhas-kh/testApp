// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/presentation/locale_provider.dart';
import 'package:narxoz/src/feautures/notifications/widget/pages/notifications_screen.dart';
import 'package:provider/provider.dart';

class BaseAppBar extends StatefulWidget {
  const BaseAppBar({super.key});

  @override
  State<BaseAppBar> createState() => _BaseAppBarState();
}

class _BaseAppBarState extends State<BaseAppBar> {
  Map<String, String> langMap = {
    'Русский': 'ru',
    'Қазақша': 'kk',
    'English': 'en',
  };

  Map<String, String> localMap = {
    'ru': 'Русский',
    'kk': 'Қазақша',
    'en': 'English',
  };

  List<String> items = [
    'Русский',
    'Қазақша',
    'English',
  ];

  String? chosenLang;

  @override
  void initState() {
    chosenLang = localMap[Provider.of<LocaleProvider>(context, listen: false)
        .locale
        .languageCode];
    super.initState();
  }

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Center(
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Color(0xff9C9C9C),
              ),
            ),
        ],
      );
    }
    return menuItems;
  }

  // List<double> _getDividersIndexes() {
  //   // final List<double> dividersIndexes = [];
  //   // for (var i = 0; i < (items.length * 2) - 1; i++) {
  //   //   if (i.isOdd) {
  //   //     dividersIndexes.add(i.toDouble());
  //   //   }
  //   // }
  //   // return dividersIndexes;
  //   final List<double> itemsHeights = [];
  //   for (var i = 0; i < (items.length * 2) - 1; i++) {
  //     if (i.isEven) {
  //       itemsHeights.add(40);
  //     }
  //     //Dividers indexes will be the odd indexes
  //     if (i.isOdd) {
  //       itemsHeights.add(4);
  //     }
  //   }
  //   return itemsHeights;
  // }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Container(
        color: AppColors.kWhite,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppSvgImages.narxozProfile),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: const Text(
                      'Select Item',
                      style: AppTextStyles.gilroy15w500Red,
                    ),

                    items: _addDividersAfterItems(items),
                    // items: langMap.keys
                    //     .map(
                    //       (item) => DropdownMenuItem<String>(
                    //         value: item,
                    //         child: Text(
                    //           item,
                    //           style: AppTextStyles.gilroy15w500Red,
                    //         ),
                    //       ),
                    //     )
                    //     .toList(),
                    value: chosenLang,

                    // customItemsHeights: _getDividersIndexes(),
                    // customItemsHeight: 4,
                    style: AppTextStyles.gilroy15w500Red,
                    onChanged: (String? value) {
                      setState(() {
                        chosenLang = value;
                      });
                      if (chosenLang != null) {
                        Provider.of<LocaleProvider>(context, listen: false)
                            .locale = Locale(langMap[chosenLang]!);

                        BlocProvider.of<AppBloc>(context)
                            .add(const AppEvent.refreshLocal());
                      }
                    },
                    // customButton: SizedBox(
                    //   width: 137,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         chosenLang.toString(),
                    //         style: AppTextStyles.gilroy15w500Red,
                    //       ),
                    //       const SizedBox(width: 12),
                    //     ],
                    //   ),
                    // ),
                    // buttonHeight: 40,
                    // buttonWidth: 140,
                    // dropdownPadding: EdgeInsets.zero,
                    // itemPadding: EdgeInsets.zero,
                    // itemHeight: 60,
                    alignment: AlignmentDirectional.centerEnd,
                    // dropdownWidth: 137,
                    // dropdownPadding: const EdgeInsets.only(right: 25),
                    // dropdownDecoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(14),
                    //   border: Border.all(color: const Color(0xff9C9C9C)),
                    // ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const NotificationsScreen(),
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(
                    Icons.notifications_none,
                    color: AppColors.kRedPrimary,
                  ),
                ),
              ],
            ),

            // TextButton(
            //   onPressed: () {},
            //   child: const Text(
            //     'Русский',
            //     style: AppTextStyles.gilroy15w500Red,
            //   ),
            // ),
          ],
        ),
      ), // here the desired height
    );
  }
}
