import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constant/icons.dart';
import '../../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../../common_widgets/common_widgets.dart';

class DeleteSheetContent extends StatelessWidget {
  const DeleteSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.error.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: AppColors.error.withValues(alpha: 0.4),
              width: 1,
            ),
          ),
          child: SvgPicture.asset(AppIcons.trash, height: 48.h, width: 48.w),
        ),
        SizedBox(height: 16.h),
        Text('Are You Sure?', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5.h),
        Text(
          'Do you want to delete this account?',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          children: [
            Expanded(
              child: CommonWidgets.primaryButton(
                context: context,
                title: 'Cancel',
                color: AppColors.surface,
                textColor: Colors.black,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: CommonWidgets.primaryButton(
                context: context,
                title: 'Delete',
                color: AppColors.primary,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
