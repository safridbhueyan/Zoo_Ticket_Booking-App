import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constant/icons.dart';
import '../../../../../../core/routes/route_name.dart';
import '../../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../../common_widgets/glass_container/glass_container.dart';

class ExperienceListCard extends StatelessWidget {
  final String thumbnailPath;
  final String title;
  final String body;
  final String time;
  const ExperienceListCard({
    super.key,
    required this.thumbnailPath,
    required this.title,
    required this.body,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => context.push(RouteName.packageDetailScreen),
      child: GlassContainer(
        isBlur: false,
        width: 242.w,
        padding: EdgeInsets.all(12.r),
        margin: EdgeInsets.only(right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4.h,
          children: [
            SizedBox(
              width: double.infinity,
              height: 170.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  thumbnailPath,
                  fit: BoxFit.cover,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Text(title, style: textTheme.bodyLarge, maxLines: 1),

            Text(body, style: textTheme.bodyMedium, maxLines: 2),

            RichText(
              text: TextSpan(
                text: "\$100.00",
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(text: "/Ticket", style: textTheme.bodySmall),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8.w,
              children: [
                SvgPicture.asset(AppIcons.allAges),
                Text("All Ages"),
                SizedBox(width: 16.w),
                SvgPicture.asset(AppIcons.clock),
                Text(time),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
