import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_Button.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/payment_method_sheet/payment_method_sheet.dart';

class BookNowContainer extends StatelessWidget {
  const BookNowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GlassContainer(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 16.h,
        bottom: 23.h,
      ),
      color: Colors.white.withValues(alpha: 0.92),
      isBlur: false,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Subtotal",
                style: textTheme.labelLarge!.copyWith(
                  fontSize: 14.sp,
                  color: Color(0xff818898),
                ),
              ),
              Text(
                "\$150",
                style: textTheme.titleSmall!.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomButton(
            width: 152.w,
            height: 52.h,
            title: "Book Now",
            onTap: () {
              showPaymentMethodBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}
