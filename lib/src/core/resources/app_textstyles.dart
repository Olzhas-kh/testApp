part of 'resources.dart';

mixin AppTextStyles {
  static const gilroy15w500Red = TextStyle(
    // fontFamily: AppFonts.gilroy,
    fontSize: 15,
    color: AppColors.kRedPrimary,
    fontWeight: FontWeight.w500,
  );

  static const gilroy19w600white = TextStyle(
    // fontFamily: AppFonts.gilroy,
    fontSize: 19,
    color: AppColors.kWhite,
    fontWeight: FontWeight.w600,
  );

  //
  static const rubik14w400 = TextStyle(
    fontFamily: AppFonts.rubik,
    fontSize: 14,
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,
  );

  static const rubik16w400Grey = TextStyle(
    fontFamily: AppFonts.rubik,
    fontSize: 16,
    color: AppColors.kGray,
    fontWeight: FontWeight.w400,
  );

  // static const gilroy19w600white = TextStyle(
  //   // fontFamily: AppFonts.gilroy,
  //   fontSize: 19,
  //   color: AppColors.kWhite,
  //   fontWeight: FontWeight.w600,
  // );

  static const ts16w500g750Bold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.kGray750,
    fontFamily: 'SF-Pro-Display-Bold',
  );

  static const ts16w400g800 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.kGray800,
  );

  static const ts16w400black = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.black,
  );

  static const ts16w500blackBold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.black,
    fontFamily: 'SF-Pro-Display-Bold',
  );
}
