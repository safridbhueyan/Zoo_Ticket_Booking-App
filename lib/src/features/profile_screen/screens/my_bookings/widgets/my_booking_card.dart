import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/theme_extension/app_colors.dart';

class MyBookingCard extends StatelessWidget {
  const MyBookingCard({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.secondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Basic Field Trips Package', style: textTheme.titleMedium),
          SizedBox(height: 4.h),

          Text(
            'Sat, September 14, 2024  - 05.00 PM',
            style: textTheme.bodySmall!.copyWith(color: Color(0xff4A4C56)),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Regular ticket : 1', style: textTheme.bodySmall),
              Text(
                '\$350',
                style: textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
