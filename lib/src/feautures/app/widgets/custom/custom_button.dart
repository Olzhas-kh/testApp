import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class CustomButton extends StatefulWidget {
  final Widget body;
  final void Function()? onClick;
  final ButtonStyle style;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.body,
    required this.onClick,
    required this.style,
    this.width,
    this.height,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? context.screenSize.width,
      height: widget.height == 0 ? null : widget.height,
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: widget.onClick,
        style: widget.style,
        child: widget.body,
      ),
    );
  }
}

ButtonStyle whiteButtonStyle({
  double elevation = 0,
}) {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.black, backgroundColor: Colors.white, elevation: elevation,
    shadowColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    // shadowColor: MaterialStateProperty.all<Color>(
    //   Colors.black,
    //   // const Color.fromRGBO(255, 255, 255, 0),
    // ),
    // backgroundColor: MaterialStateProperty.all<Color>(
    //   const Color.fromRGBO(255, 255, 255, 1),
    // ),
    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //   RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(7),
    //   ),
    // ),
  );
}

ButtonStyle azureButtonStyle({
  double elevation = 0,
}) {
  return ElevatedButton.styleFrom(
    foregroundColor: AppColors.kPrimaryColor,
    backgroundColor: AppColors.kAzure,
    shadowColor: const Color.fromRGBO(255, 255, 255, 1),
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      // side: const BorderSide(color: Colors.white),
    ),
  );
}

ButtonStyle blueAlpha32ButtonStyle({
  double elevation = 0,
}) {
  return ElevatedButton.styleFrom(
    foregroundColor: AppColors.kGray400,
    backgroundColor: const Color(0xffe5f1ff),
    shadowColor: Colors.white,
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      // side: const BorderSide(color: Colors.white),
    ),
  );
}

ButtonStyle blackButtonStyle() {
  return ButtonStyle(
    shadowColor: MaterialStateProperty.all<Color>(
      const Color.fromRGBO(255, 255, 255, 1),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(0, 0, 0, 1.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.white),
      ),
    ),
  );
}

ButtonStyle pinkButtonStyle() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: AppColors.kPrimaryColor,
    shadowColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}

// ButtonStyle gray50ButtonStyle({
//   Color color = AppColors.kGray50,
//   double elevation = 1,
// }) {
//   return ElevatedButton.styleFrom(
//     onPrimary: Colors.white,
//     primary: color,
//     elevation: elevation,
//     shadowColor: Colors.black,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(12),
//     ),
//   );
// }

// ButtonStyle gray100ButtonStyle({
//   Color color = AppColors.kGray100,
//   double elevation = 1,
// }) {
//   return ElevatedButton.styleFrom(
//     onPrimary: Colors.white,
//     primary: color,
//     elevation: elevation,
//     shadowColor: Colors.black,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(12),
//     ),
//   );
// }

// ButtonStyle yellowButtonStyle() {
//   return ButtonStyle(
//     backgroundColor: MaterialStateProperty.all<Color>(
//       const Color.fromRGBO(255, 221, 0, 1),
//     ),
//     shadowColor: MaterialStateProperty.all<Color>(
//       const Color.fromRGBO(255, 255, 255, 0),
//     ),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(7),
//         // side: BorderSide(color: Colors.black),
//       ),
//     ),
//   );

ButtonStyle redButtonStyle({
  double elevation = 0,
}) {
  return ElevatedButton.styleFrom(
    shadowColor: const Color.fromRGBO(255, 255, 255, 1),
    backgroundColor: AppColors.kRedPrimary,
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      // side: const BorderSide(color: Colors.white),
    ),
  );
}
