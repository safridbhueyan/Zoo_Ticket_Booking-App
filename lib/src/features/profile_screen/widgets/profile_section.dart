import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';

import '../../../../core/theme/theme_extension/app_colors.dart';

class ProfileSections extends StatelessWidget {
  const ProfileSections({
    super.key,
    required this.textTheme,
    required this.widgetList,
    this.title,
  });

  final TextTheme textTheme;
  final String? title;
  final List<Widget> widgetList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: GlassContainer(
          isBlur: false,
          padding: EdgeInsets.all(16.r),
          color: AppColors.secondary.withValues(alpha: 0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title!,
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.textColor,
                  ),
                ),
              SizedBox(height: 8.h),
              ...widgetList,
            ],
          ),
        ),
      ),
    );
  }
}
