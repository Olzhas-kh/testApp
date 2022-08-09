part of 'resources.dart';

mixin AppTheme {
  static ThemeData get light => ThemeData(
        // primarySwatch: MaterialColor(0xffB1F9A3, primaryColorMap),
        fontFamily: AppFonts.gilroy,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: AppColors.kWhite,
        ),
        scaffoldBackgroundColor: AppColors.kWhite,
        primaryColor: AppColors.kRedPrimary,
      );
}

mixin AppDecorations {
  static const List<BoxShadow> dropShadow = [
    BoxShadow(
      offset: Offset(1, 1),
      blurRadius: 6,
      color: Color.fromRGBO(0, 0, 0, 0.25),
    ),
    // BoxShadow(
    //   blurRadius: 2,
    //   color: Color.fromRGBO(0, 0, 0, 0.08),
    // ),
  ];
}
