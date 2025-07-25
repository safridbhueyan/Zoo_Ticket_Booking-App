// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';

class CustomDropdown extends ConsumerWidget {
  const CustomDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = ref.watch(selectedDropdownValueProvider);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 55.w,
      height: 34.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.r),
        color: AppColors.onPrimary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: DropdownButton<String>(
                value: selectedValue,
                hint: Text(
                  "1",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: AppColors.textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                onChanged: (String? newValue) {
                  ref.read(selectedDropdownValueProvider.notifier).state =
                      newValue;
                },
                items: <String>['1', '2', '3', '4', '5']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, textAlign: TextAlign.center),
                      );
                    })
                    .toList(),
                icon: SvgPicture.asset(
                  AppIcons.dropArrow,
                  color: AppColors.textColor,
                ),
                iconSize: 20,
                underline: SizedBox(),
                isExpanded: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
