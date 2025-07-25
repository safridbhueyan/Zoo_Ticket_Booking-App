import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/dropdown_provider.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/dropdown_menu.dart';

class CustomBodyCount extends StatelessWidget {
  final String title;
  final bool isAdult;

  const CustomBodyCount({
    super.key,
    required this.title,
    required this.isAdult,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final GlobalKey _key = GlobalKey();
    return Consumer(
      builder: (context, ref, _) {
        final countProvider = isAdult
            ? adultsCountProvider
            : childrenCountProvider;
        final count = ref.watch(countProvider);
        return Container(
          width: 158.w,
          height: 68.h,
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
                      title,
                      style: textTheme.labelLarge!.copyWith(
                        fontSize: 14.sp,
                        color: Color(0xff818898),
                      ),
                    ),
                    Text(
                      count.toString(),
                      style: textTheme.labelLarge!.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  key: _key,
                  onTap: () {
                    showNumberMenu(context, _key, ref, countProvider);
                  },
                  child: SvgPicture.asset(AppIcons.dropdown),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
