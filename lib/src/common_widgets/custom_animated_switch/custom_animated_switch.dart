import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class CustomAnimatedSwitcher extends StatelessWidget {
  final bool isSwitchedOn;
  final Function(bool) onChanged;
  final Duration duration;

  const CustomAnimatedSwitcher({
    super.key,
    required this.isSwitchedOn,
    required this.onChanged,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSwitchedOn);
      },
      child: AnimatedContainer(
        duration: duration,
        curve: Curves.easeInOut,
        width: 50.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: isSwitchedOn ? AppColors.primary : Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.r),
          child: AnimatedAlign(
            alignment: isSwitchedOn
                ? Alignment.centerRight
                : Alignment.centerLeft,
            duration: duration,
            curve: Curves.easeInOut,
            child: Container(
              width: 22.w,
              height: 22.h,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
