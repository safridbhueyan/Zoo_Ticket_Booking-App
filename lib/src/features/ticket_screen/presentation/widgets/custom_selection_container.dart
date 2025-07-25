// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/select_provider.dart';

class CustomSelectionContainer extends StatelessWidget {
  final String title;
  final String img;
  final int index;
  // final StateNotifierProvider<SelectNotifier, bool> provider;
  const CustomSelectionContainer({
    super.key,
    required this.title,
    required this.img,
    required this.index,
    // required this.provider
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer(
      builder: (context, ref, _) {
        final isSelected = ref.watch(selectedTileProvider);
        return GestureDetector(
          onTap: () {
            ref.read(selectedTileProvider.notifier).state = index;
          },
          child: Container(
            height: 76.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99.r),
              color: AppColors.onPrimary,
              border: Border.all(
                width: 2.w,
                color: isSelected == index
                    ? AppColors.primary
                    : AppColors.onPrimary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      img,
                      height: 24.h,
                      width: 24.w,
                      color: isSelected == index
                          ? AppColors.primary
                          : AppColors.iconsInactiveColor,
                    ),
                  ),
                  Text(
                    title,
                    style: textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isSelected == index,
                      onChanged: (v) {
                        ref.read(selectedTileProvider.notifier).state = index;
                      },
                      shape: CircleBorder(),
                      activeColor: AppColors.primary,
                      checkColor: Colors.white,
                      side: BorderSide(color: Color(0xffECEFF3), width: 2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
