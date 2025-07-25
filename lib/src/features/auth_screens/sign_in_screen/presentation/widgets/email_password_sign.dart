import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class EmailPasswordSignIn extends StatelessWidget {
  const EmailPasswordSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      spacing: 6.h,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Email Address or Phone Number"),
        ),
        TextFormField(
          decoration: InputDecoration(hintText: "Enter your email"),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Email Address or Phone Number"),
        ),
        TextFormField(
          decoration: InputDecoration(hintText: "Enter your password"),
        ),
        SizedBox(height: 2.h),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => context.push(RouteName.forgotPasswordScreen),
            child: Text(
              "Forgot Password?",
              style: textTheme.bodyMedium?.copyWith(
                color: AppColors.error,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => context.go(RouteName.homeScreen),
            child: Text("Continue"),
          ),
        ),
      ],
    );
  }
}
