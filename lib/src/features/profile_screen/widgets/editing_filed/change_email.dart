import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../common_widgets/common_widgets.dart';

class ChangeEmail extends StatelessWidget {
  const ChangeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Change e-mail'),
        SizedBox(height: 10.h),
        TextFormField(decoration: InputDecoration(hintText: 'Enter new email')),
        SizedBox(height: 10.h),
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
                title: 'Update',
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
