import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/general%20admission%20screens/widgets/summary_tile.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_Button.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/payment_method_sheet/payment_success_sheet.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/payment_method_sheet/widgets/payment_selection.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/payment_method_sheet/widgets/promo_box.dart';

void showPaymentMethodBottomSheet(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),

        child: IntrinsicHeight(
          child: ClipPath(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                  bottom: Radius.circular(32),
                ),
              ),

              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: 5.w,
                      width: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffDFE1E7),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Payment Method",
                    style: textTheme.titleSmall!.copyWith(
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  PaymentSelection(),
                  SizedBox(height: 16.h),
                  PromoBox(),
                  SizedBox(height: 16.h),
                  SummaryTile(color: Color(0xffF7F8FA), showPromoCode: true),
                  SizedBox(height: 16.h),
                  CustomButton(
                    title: "Book Now",
                    width: 327.w,
                    height: 52.h,
                    onTap: () {
                      Navigator.pop(context);
                      showSuccessBottomSheet(context);
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
