part of 'style.dart';

abstract class AppColors {
  static const background = Color(0xff121212);
  static const fontColor = Color(0xff121212);
  static const primaryPurple = Color(0xff632556);
  static const secondaryPurple = Color(0xff901D28);
  static const yellow = Color(0xffFFEC3F);
  static const white = Color(0xffFDFFFF);
  static const greyLight = Color(0xff252525);
  static const grey = Color(0xff686868);
  static const errorColor = Colors.red;
  static const cardColor = Color(0xff252525);
  static const cardShadeColor = Color(0xff151515);
  static const greenColor = Color(0xff00B81E);
  static const greyMedium = Color(0xffAEAEAE);
  static const Color primaryPurple1 = Color(0xff9181F4);
  static const Color secondaryPurple1 = Color(0xff5038ED);

  static const backGroundGradient = LinearGradient(
    colors: [
      secondaryPurple,
      primaryPurple,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
