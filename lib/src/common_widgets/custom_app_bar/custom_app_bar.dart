import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/icons.dart';
import '../../../core/constant/images.dart';
import '../../../core/theme/theme_extension/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(color: AppColors.secondary),
              child: Image.asset(AppImages.logo),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              spacing: 8.w,
              children: [
                SvgPicture.asset(AppIcons.clockCircle),
                Text(
                  'Todays Hours : ( 9AM -  6PM)',
                  style: textTheme.labelLarge,
                ),
              ],
            ),
          ),
          ClipOval(
            child: Container(
              height: 40.h,
              width: 40.w,
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(color: AppColors.secondary),
              child: SvgPicture.asset(AppIcons.notifications),
            ),
          ),
        ],
      ),
    );
  }
}
