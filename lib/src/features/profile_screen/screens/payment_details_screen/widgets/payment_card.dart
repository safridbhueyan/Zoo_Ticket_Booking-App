import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theme/theme_extension/app_colors.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    required this.textTheme,
    required this.title,
    required this.image,
    required this.status,
  });

  final TextTheme textTheme;
  final String title;
  final String image;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(image),
              SizedBox(width: 12.w),
              Text(
                title,
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            status,
            style: textTheme.bodyLarge!.copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
