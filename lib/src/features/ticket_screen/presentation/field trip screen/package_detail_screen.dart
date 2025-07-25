import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/field%20trip%20screen/widgets/paragraph.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/book_now_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/customize_the_party%20/customize_party_button.dart';

class PackageDetailScreen extends StatelessWidget {
  const PackageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      useSafeArea: false,
      child: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20.h, bottom: 120.h),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Padding(
                    padding: AppPadding.screenHorizontal,
                    child: Row(
                      children: [
                        CommonWidgets.backButton(context: context),
                        SizedBox(width: 12.w),
                        Text(
                          "Basic Safari",
                          style: textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.h),
                  Consumer(
                    builder: (context, ref, _) {
                      final isexpanded = ref.watch(expansionStateProvider);
                      return GlassContainer(
                        width: 343.w,
                        height: isexpanded ? 1080.h : 785.h,
                        padding: EdgeInsets.all(8),
                        isBlur: false,
                        child: Column(
                          children: [
                            Image.asset(AppImages.tripWithZebra),
                            SizedBox(height: 16.h),
                            Text(
                              "Explore the Wild – Basic Safari Package",
                              style: textTheme.titleSmall!.copyWith(
                                color: AppColors.textColor,
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Paragraph(),
                            SizedBox(height: 16.h),
                            CustomizePartyButton(),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),

          Positioned(left: 0, right: 0, bottom: 0, child: BookNowContainer()),

          //       Positioned(
          //       top: 0,
          //       left: 0,
          //       right: 0,
          //       child: Padding(
          //       padding: AppPadding.screenHorizontal,
          //       child: Row(
          //       children: [
          //       CommonWidgets.backButton(context: context),
          //       SizedBox(width:12.w,),
          //       Text("Basic Safari",
          //       style: textTheme.bodyLarge!.copyWith(
          //       fontWeight: FontWeight.w700,
          //       color: AppColors.textColor,
          //       ))]),
          //     )
          // ),
        ],
      ),
    );
  }
}
