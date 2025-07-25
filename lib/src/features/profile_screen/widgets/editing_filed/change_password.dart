import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../common_widgets/common_widgets.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Current Password'),
        SizedBox(height: 10),

        TextFormField(decoration: InputDecoration(hintText: 'Enter Name')),
        SizedBox(height: 10),
        Text('Enter new password'),
        SizedBox(height: 15),
        TextFormField(decoration: InputDecoration(hintText: 'Enter Name')),
        SizedBox(height: 10),
        Text('Re-enter new password'),
        SizedBox(height: 10),
        TextFormField(decoration: InputDecoration(hintText: 'Enter Name')),
        SizedBox(height: 15),
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
