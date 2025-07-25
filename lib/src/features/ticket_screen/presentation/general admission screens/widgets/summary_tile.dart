import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class SummaryTile extends StatelessWidget {
  final Color? color;
  final bool? showPromoCode;
  const SummaryTile({super.key, this.color, this.showPromoCode = false});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: color ?? AppColors.onPrimary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "summary",
              style: textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  "Tickets (3x Adult, 2x Children)",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818898),
                  ),
                ),
                Spacer(),
                Text(
                  "\$100",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818898),
                  ),
                ),
              ],
            ),

            if (showPromoCode == true) ...[
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    "Promo Code",
                    style: textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff818898),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$0.5",
                    style: textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff818898),
                    ),
                  ),
                ],
              ),
            ],

            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  "Date",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818898),
                  ),
                ),
                Spacer(),
                Text(
                  "February 14, 2025",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818898),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  "Total Pay",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ),
                Spacer(),
                Text(
                  "\$100.5",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
