import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/theme_extension/app_colors.dart';

class EmailPasswordSignUp extends StatelessWidget {
  const EmailPasswordSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      spacing: 6.h,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text("Email")),
        TextFormField(
          decoration: InputDecoration(hintText: "Enter your email"),
        ),
        SizedBox(height: 10.h),

        Align(alignment: Alignment.centerLeft, child: Text("Password")),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "Enter your password"),
        ),
        SizedBox(height: 10.h),
        Align(alignment: Alignment.centerLeft, child: Text("Confirm Password")),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "Confirm your password"),
        ),

        SizedBox(height: 10.h),

        RichText(
          text: TextSpan(
            text: "By clicking the “Continue” button I agree to our ",
            style: textTheme.bodySmall?.copyWith(
              color: AppColors.secondaryTextColor,
            ),
            children: [
              TextSpan(
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.textColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.textColor,
                ),
                text:
                    "Terms and Conditions, Privacy Policy, and Community Guidelines.",
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: Text("Continue")),
        ),
      ],
    );
  }
}
