import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bring the whole family for a day of fun, learning, and wild discovery! Family Day Adventure is packed with interactive experiences designed to entertain both kids and adults. Enjoy up-close animal encounters, educational games, creative crafts, and live entertainment throughout the park. It’s the perfect way to bond, laugh, and explore together.",
          style: textTheme.labelLarge!.copyWith(
            fontSize: 14.sp,
            color: Color(0xff4A4C56),
          ),
        ),

        SizedBox(height: 20.h),
        Text(
          "🎨  Arts & crafts stations for kids",
          style: textTheme.labelLarge!.copyWith(
            fontSize: 14.sp,
            color: Color(0xff4A4C56),
          ),
        ),
        Text(
          " 🦜 Animal meet-and-greets every hour",
          style: textTheme.labelLarge!.copyWith(
            fontSize: 14.sp,
            color: Color(0xff4A4C56),
          ),
        ),
        Text(
          " 🎶 Live music and storytelling shows",
          style: textTheme.labelLarge!.copyWith(
            fontSize: 14.sp,
            color: Color(0xff4A4C56),
          ),
        ),
        Text(
          "🍔 Food trucks with family meal deals",
          style: textTheme.labelLarge!.copyWith(
            fontSize: 14.sp,
            color: Color(0xff4A4C56),
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.group),
            SizedBox(width: 8.w),
            Text(
              "Up to 15 Guests",
              style: textTheme.labelLarge!.copyWith(
                fontSize: 14.sp,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.clock1),
            SizedBox(width: 8.w),
            Text(
              "12 jun 2025",
              style: textTheme.labelLarge!.copyWith(
                fontSize: 14.sp,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.location),
            SizedBox(width: 8.w),
            Text(
              "Main Safari Trail – Zone 3",
              style: textTheme.labelLarge!.copyWith(
                fontSize: 14.sp,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
