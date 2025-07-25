import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_Button.dart';

class PackageContainer extends StatelessWidget {
  final String recomendation;
  final String title;
  final String discription;
  final String price;
  final void Function()? onTap;

  const PackageContainer({
    super.key,
    required this.title,
    required this.discription,
    required this.recomendation,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.onPrimary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xffECEFF3),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 12.w,
                  vertical: 4.h,
                ),

                child: Text(
                  recomendation,
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),

            SizedBox(height: 14.h),

            Text(
              title,
              style: textTheme.titleMedium!.copyWith(
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 8.h),

            Text(
              discription,
              style: textTheme.labelLarge!.copyWith(
                color: Color(0xff4A4C56),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: textTheme.titleSmall!.copyWith(
                    color: AppColors.textColor,
                  ),
                ),
                Spacer(),
                CustomButton(
                  width: 78.w,
                  height: 40.h,
                  title: "Details",
                  onTap: onTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
