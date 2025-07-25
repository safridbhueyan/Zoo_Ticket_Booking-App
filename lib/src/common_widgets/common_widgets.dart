import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/src/common_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:zoo_app/src/common_widgets/primary_button/primary_button.dart';
import '../../core/theme/theme_extension/app_colors.dart';
import 'custom_bottom_sheet/custom_bottom_sheet.dart';

class CommonWidgets {
  static CustomAppBar customAppBar() => CustomAppBar();
  static PrimaryButton primaryButton({
    required BuildContext context,
    required String title,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    EdgeInsets? padding,
    TextStyle? textTheme,
  }) => PrimaryButton(
    title: title,
    color: color,
    textColor: textColor,
    onPressed: onPressed,
    padding: padding,
    textTheme: textTheme,
  );
  static Widget backButton({required BuildContext context}) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.textColor,
          size: 15.sp,
        ),
      ),
    );
  }
}
