import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';

@immutable
class CustomProgressIndicator extends StatelessWidget {
  final double? value;

  const CustomProgressIndicator({
    this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) => CircularProgressIndicator(
        color: AppColors.kRedPrimary,
        value: value,
      );
}
