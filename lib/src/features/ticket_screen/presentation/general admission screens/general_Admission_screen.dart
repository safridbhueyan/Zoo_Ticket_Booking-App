import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/book_now_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/custom_body_count.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/date_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/summary_tile.dart';

class GeneralAdmissionScreen extends StatelessWidget {
  const GeneralAdmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20.h, bottom: 120.h),
              child: Column(
                children: [
                  SizedBox(height: 31.h),
                  GlassContainer(
                    width: 343.w,
                    height: deviceHeight < 700 ? 630.h : 623.h,
                    padding: EdgeInsets.all(8),
                    isBlur: false,
                    child: Column(
                      children: [
                        Image.asset(AppImages.tripWithZebra),
                        SizedBox(height: 16.h),
                        Text(
                          "Explore the Wild – General Admission",
                          style: textTheme.titleSmall!.copyWith(
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        DateContainer(),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            CustomBodyCount(title: "Adults", isAdult: true),
                            Spacer(),
                            CustomBodyCount(title: "Children", isAdult: false),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        SummaryTile(),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),

          Positioned(left: 0, right: 0, bottom: 0, child: BookNowContainer()),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: AppPadding.screenHorizontal,
              child: Row(
                children: [
                  CommonWidgets.backButton(context: context),
                  SizedBox(width: 12.w),
                  Text(
                    "General Admission",
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor,
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
