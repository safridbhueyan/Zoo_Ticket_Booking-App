import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/app_colors.dart';

class AppAppBarTheme {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    actionsPadding: EdgeInsets.all(10),
    titleTextStyle: GoogleFonts.dmSans(
      textStyle: TextStyle(
        color: AppColors.textColor,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
