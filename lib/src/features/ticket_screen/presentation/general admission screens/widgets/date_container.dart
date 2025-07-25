import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/date_provider.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer(
      builder: (context, ref, _) {
        final selectedDate = ref.watch(selectedDateProvider).toLocal();
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.onPrimary,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 12.h,
              bottom: 12.h,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: textTheme.labelLarge!.copyWith(
                        fontSize: 14.sp,
                        color: Color(0xff818898),
                      ),
                    ),
                    Text(
                      "${selectedDate.toLocal().day}/${selectedDate.toLocal().month}/${selectedDate.toLocal().year}",
                      style: textTheme.labelLarge!.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null && pickedDate != selectedDate) {
                      ref.read(selectedDateProvider.notifier).state =
                          pickedDate;
                    }
                  },
                  child: SvgPicture.asset(AppIcons.calender),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
