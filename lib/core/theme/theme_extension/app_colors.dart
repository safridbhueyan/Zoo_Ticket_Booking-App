import 'package:flutter/material.dart';

class AppColors {
  static ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffFC5733),
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: Color(0xff1D1F2C),
    error: Color(0xffFC5733),
    onError: Colors.white,
    surface: Colors.white.withValues(alpha: 0.5),
    onSurface: Color(0xff1D1F2C),
  );
  static const Color textColor = Color(0xff1D1F2C);
  static const Color primary = Color(0xffFC5733);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Colors.white;
  static const Color onSecondary = Color(0xff1D1F2C);
  static const Color error = Color(0xffED544E);
  static const Color onError = Colors.white;
  static Color surface = Color(0xffECEFF3);
  static const Color onSurface = Color(0xff1D1F2C);
  static const Color secondaryTextColor = Color(0xff4A4C56);
  static const Color iconsInactiveColor = Color(0xff777980);
}
