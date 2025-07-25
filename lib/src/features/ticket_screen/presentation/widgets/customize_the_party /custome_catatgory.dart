import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/customize_the_party%20/custom_dropdown.dart';

class CustomeCatatgory extends StatelessWidget {
  final String title;
  final bool isDropdwonOk;
  final void Function()? onTap;
  const CustomeCatatgory({
    super.key,
    required this.title,
    required this.isDropdwonOk,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Color(0xffECEFF3),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child: Row(
            children: [
              Text(
                title,
                style: textTheme.bodyMedium!.copyWith(color: Color(0xff818898)),
              ),
              Spacer(),
              isDropdwonOk == true
                  ? CustomDropdown()
                  : GestureDetector(
                      onTap: onTap,
                      child: SvgPicture.asset(AppIcons.grayADD),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
