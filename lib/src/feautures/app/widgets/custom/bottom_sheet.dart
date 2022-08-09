import 'package:flutter/material.dart';

Future bottomSheet(Widget widget, BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    enableDrag: true,
    isDismissible: false,
    isScrollControlled: true,
    builder: (context) {
      return widget;
    },
  );
}
