import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/app_colors.dart';

class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  static final evaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
      foregroundColor: AppColors.onPrimary,
      backgroundColor: AppColors.primary,
      textStyle: GoogleFonts.dmSans(
        textStyle: TextStyle(fontSize: 16.sp),
        color: AppColors.onPrimary,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
    ),
  );
}
