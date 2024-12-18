part of 'style.dart';

class AppTextStyle {
  static const TextStyle _baseTextStyle = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: AppColors.background,
  );

  static TextStyle get heading1 => _baseTextStyle.copyWith(
        fontSize: 48.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get heading2 => _baseTextStyle.copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get heading3 => _baseTextStyle.copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get heading4 => _baseTextStyle.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get heading5 => _baseTextStyle.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get heading6 => _baseTextStyle.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      wordSpacing: -1,
    );
  }

  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 10.sp,
      // color: AppColors.black,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      // color: Colors.white,
    );
  }

  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      // color: Colors.white,
    );
  }

  static TextStyle get bodyText3 {
    return _baseTextStyle.copyWith(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      // color: Colors.white,
    );
  }

  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    );
  }
}
