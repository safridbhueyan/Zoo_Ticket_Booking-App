import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_Button.dart';

void showSuccessBottomSheet(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),

        child: IntrinsicHeight(
          child: ClipPath(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                  bottom: Radius.circular(32),
                ),
              ),

              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: 5.w,
                      width: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffDFE1E7),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Image.asset(AppImages.success),

                  SizedBox(height: 16.h),
                  Text(
                    "Booking Confirmed",
                    style: textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),

                  SizedBox(height: 16.h),
                  Text(
                    "Your reservation has been successfully received and your ticket details are on their way to your email.",
                    textAlign: TextAlign.center,
                    style: textTheme.labelLarge!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4A4C56),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomButton(
                    title: "Continue",
                    width: 327.w,
                    height: 52.h,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
