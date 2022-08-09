import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  final bool? isVisible;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String hintText;
  final double? height;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? repeatController;
  final void Function(String)? onFieldSubmitted;
  final double borderRadius;
  final InputBorder? enabledBorder;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    required this.hintText,
    this.height,
    this.keyboardType,
    required this.maxLines,
    this.inputFormatters,
    required this.validator,
    this.repeatController,
    this.isVisible,
    this.suffixIcon,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.borderRadius = 4,
    this.enabledBorder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        autocorrect: false,
        obscureText: isVisible ?? false,
        style: const TextStyle(
          fontSize: 15,
          color: AppColors.kGray1000,
        ),
        inputFormatters: inputFormatters,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxLines,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: AppColors.kAzure,
        validator: validator,
        // validator: (value){
        //   return value!=null&&value.isEmpty?"Заполните форму!":null;
        // },
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: AppColors.kGray,
          ),
          filled: true,
          fillColor: AppColors.kWhite,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.kInnerBoder),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kRedPrimary),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          border: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.kInnerBoder),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
        ),
      ),
    );
  }
}
