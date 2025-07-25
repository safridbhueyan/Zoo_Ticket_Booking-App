import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  Widget _contentToExplore({
    required String iconPath,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        spacing: 8.h,
        children: [
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: SvgPicture.asset(iconPath),
          ),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text("Explore", style: textTheme.bodyLarge),
        GlassContainer(
          isBlur: false,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _contentToExplore(
                iconPath: AppIcons.animals,
                title: "Animals",
                onTap: () => context.push(RouteName.animalsListScreen),
              ),
              _contentToExplore(
                iconPath: AppIcons.birthdays,
                title: "Birthdays",
                onTap: () => context.push(RouteName.birthdayScreen),
              ),
              _contentToExplore(
                iconPath: AppIcons.fieldTrips,
                title: "Fieldtrips",
                onTap: () => context.push(RouteName.fieldtripScreen),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
