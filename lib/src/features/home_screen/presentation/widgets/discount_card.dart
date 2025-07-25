import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 343.w,
      height: deviceHeight < 700 ? 220.h : 200.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: SizedBox(
              width: 343.w,
              height: deviceHeight < 700 ? 220.h : 200.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  AppImages.zebraBackground,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              width: 343.w,
              height: deviceHeight < 700 ? 220.h : 200.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Meet Our New Animal",
                    style: textTheme.titleMedium?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Get 20% Off Admissions",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6.h),

                  SizedBox(
                    width: 145.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.error,
                      ),
                      onPressed: () => context.go(RouteName.ticketScreen),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8.w,
                        children: [
                          Text(
                            "Book Now",
                            style: textTheme.bodyMedium?.copyWith(
                              color: AppColors.error,
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: AppColors.error),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
