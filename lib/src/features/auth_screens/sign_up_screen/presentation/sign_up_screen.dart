import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/features/auth_screens/sign_up_screen/presentation/widgets/email_password_sign_up.dart';

import '../../../../../core/constant/padding.dart';
import '../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../common_widgets/glass_container/glass_container.dart';
import '../../sign_in_screen/presentation/widgets/email_password_sign.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // final deviceHeight = MediaQuery.of(context).size.height;
    return CreateScreen(
      child: Padding(
        padding: AppPadding.screenHorizontal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create New Account",
                  style: textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt.",
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
              SizedBox(height: 24.h),
              GlassContainer(
                isBlur: false,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                child: Column(
                  spacing: 6.h,
                  children: [
                    EmailPasswordSignUp(),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () =>
                          context.pushReplacement(RouteName.signInScreen),
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              style: textTheme.bodyMedium?.copyWith(
                                color: AppColors.error,
                                fontWeight: FontWeight.w600,
                              ),
                              text: "Sign In now",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
