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
