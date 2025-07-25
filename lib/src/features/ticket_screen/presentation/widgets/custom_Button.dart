import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  final double? height;
  final double? width;
  const CustomButton({
    super.key,
    required this.onTap,
    this.title,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 54.h,
        width: width ?? 311.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: AppColors.primary,
        ),
        child: Center(
          child: Text(
            title ?? "Next",
            style: textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
