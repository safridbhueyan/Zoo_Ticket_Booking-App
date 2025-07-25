import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme_extension/app_colors.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
    filled: true,
    fillColor: Colors.white,
    hintStyle: GoogleFonts.dmSans(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff818898),
    ),
    labelStyle: GoogleFonts.dmSans(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff0D0D12),
    ),
    prefixIconColor: Color(0xff0D0D12),
    suffixIconColor: Color(0xff0D0D12),
    errorStyle: GoogleFonts.dmSans(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xffFC5733),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Color(0xffDFE1E7)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Color(0xffDFE1E7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Color(0xffDFE1E7)),
    ),
    disabledBorder: InputBorder.none,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Color(0xffFC5733)),
    ),
  );
}
