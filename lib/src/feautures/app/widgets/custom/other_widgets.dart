import 'package:flutter/material.dart';

Container line() {
  return Container(
    height: 0.5,
    margin: const EdgeInsets.symmetric(vertical: 3),
    color: const Color.fromRGBO(228, 231, 236, 1),
  );
}

Divider getDivider({
  double thickness = 0.5,
  double indent = 10,
  double endIndent = 10,
  double height = 0.5,
}) {
  return Divider(
    thickness: thickness,
    indent: indent,
    endIndent: endIndent,
    height: height,
    color: const Color.fromRGBO(0, 0, 0, 0.15),
  );
}

String resizeProductName(String name) {
  if (name.length > 20) {
    return '${name.substring(0, 20)}...';
  } else {
    return name;
  }
}
