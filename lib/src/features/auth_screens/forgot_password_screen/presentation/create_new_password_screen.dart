import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../../core/theme/theme_extension/app_colors.dart';
import '../../../../common_widgets/common_widgets.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: Padding(
        padding: AppPadding.screenHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                leading: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: CommonWidgets.backButton(context: context),
                ),
                title: Text("Forgot Password"),
                centerTitle: true,
              ),
              SizedBox(height: 24.h),

              GlassContainer(
                isBlur: false,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                child: Column(
                  spacing: 4.h,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create New Password",
                        style: textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt.",
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm your password",
                      ),
                    ),
                    SizedBox(height: 28.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => context.go(RouteName.signInScreen),
                        child: Text("Save"),
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
