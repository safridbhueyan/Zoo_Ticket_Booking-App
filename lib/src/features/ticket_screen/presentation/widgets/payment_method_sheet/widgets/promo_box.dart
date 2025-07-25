import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class PromoBox extends StatelessWidget {
  const PromoBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 64.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xffF7F8FA),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF7F8FA),
                  hintText: "Promotional Code",
                  hintStyle: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff7C8690),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),

            Container(
              height: 32.h,
              width: 72.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: AppColors.onPrimary,
              ),
              child: Center(
                child: Text(
                  "-",
                  style: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff030527),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
