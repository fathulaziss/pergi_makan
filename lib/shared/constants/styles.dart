import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget verticalSpace(double v) => SizedBox(height: v);

Widget horizontalSpace(double v) => SizedBox(width: v);

class AppColors {
  static Color primaryColor = const Color(0xFF00CEC9);
  static Color primaryColor2 = const Color(0xFFDBD7EC);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color blackColor = const Color(0xFF000000);
  static Color greyColor = const Color(0xFF6F7789);
  static Color greyColor2 = const Color(0xFFFCFCFC);
  static Color redColor = const Color(0xFFEB70A5);
}

class FontSizes {
  static double get s9 => 9.w;
  static double get s10 => 10.w;
  static double get s12 => 12.w;
  static double get s14 => 14.w;
  static double get s16 => 16.w;
  static double get s18 => 18.w;
  static double get s20 => 20.w;
  static double get s22 => 22.w;
  static double get s24 => 24.w;
  static double get s32 => 32.w;
}

class Insets {
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get med => 12.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get xxl => 32.w;
}

class Sizes {
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 80.w;
}

class Corners {
  // static double sm = 3 * scale;
  static double sm = 3.w;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  // static double med = 5 * scale;
  static double med = 5.w;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  // static double lg = 8 * scale;
  static double lg = 8.w;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  // static double xl = 18 * scale;
  static double xl = 18.w;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  // static double xxl = 24 * scale;
  static double xxl = 34.w;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}

class BorderStyles {
  static OutlineInputBorder enableTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xlBorder,
  );

  static OutlineInputBorder focusTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xlBorder,
  );

  static OutlineInputBorder disableTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xlBorder,
  );

  static OutlineInputBorder errorTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xlBorder,
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xlBorder,
  );
}

InputDecoration inputDecoration(
    {required String hintText, Widget? prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
    isDense: true,
    filled: true,
    fillColor: AppColors.whiteColor,
    border: BorderStyles.enableTextField,
    focusedBorder: BorderStyles.focusTextField,
    enabledBorder: BorderStyles.enableTextField,
    errorBorder: BorderStyles.errorTextField,
    disabledBorder: BorderStyles.disableTextField,
    focusedErrorBorder: BorderStyles.focusedErrorBorder,
    errorMaxLines: 5,
    prefixIconConstraints:
        BoxConstraints(minHeight: Sizes.med, minWidth: Sizes.med),
    suffixIconConstraints:
        BoxConstraints(minHeight: Sizes.med, minWidth: Sizes.med),
    contentPadding: EdgeInsets.zero,
    hintStyle: TextStyles.greyLight.copyWith(
        letterSpacing: 0.2,
        fontSize: FontSizes.s16,
        color: AppColors.greyColor),
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 5)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: AppColors.greyColor.withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1)),
      ];
  static List<BoxShadow> get none => [
        const BoxShadow(
            color: Colors.transparent,
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 0)),
      ];

  static List<BoxShadow> get shadowsUp => [
        BoxShadow(
            color: AppColors.blackColor.withOpacity(.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(-1, 2)),
      ];
}

class TextStyles {
  static TextStyle greenLight = GoogleFonts.poppins().copyWith(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle greenNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle greenMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle greenSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle greenBold = GoogleFonts.poppins().copyWith(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle whiteLight = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle whiteNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle whiteMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle whiteSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle whiteBold = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle blackLight = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle blackNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle blackMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle blackSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle blackBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle greyLight = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle greyNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle greyMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle greySemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle greyBold = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);
}
