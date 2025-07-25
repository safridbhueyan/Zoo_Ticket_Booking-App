import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';

class PaymentSelection extends StatelessWidget {
  const PaymentSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer(
      builder: (context, ref, _) {
        final selectedPaymentMethod = ref.watch(selectedPaymentMethodProvider);
        return Column(
          children: [
            //column 1 of the first payment tile
            Row(
              children: [
                //logo
                Container(
                  height: 56.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF7F8FA),
                  ),
                  child: Image.asset(AppImages.pPay),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paypal",
                      style: textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff030527),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "feronica98@gmail.com",
                      style: textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff030527),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Radio<int>(
                    value: 1,
                    groupValue: selectedPaymentMethod,
                    onChanged: (v) {
                      ref.read(selectedPaymentMethodProvider.notifier).state =
                          v!;
                    },
                  ),
                ),
              ],
            ),
            Divider(color: Color(0xffEFF2F6)),
            //column 1 of the first payment tile
            Row(
              children: [
                //logo
                Container(
                  height: 56.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF7F8FA),
                  ),
                  child: Image.asset(AppImages.aPay),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple Pay",
                      style: textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff030527),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "feronica98@gmail.com",
                      style: textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff030527),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Radio<int>(
                    value: 2,
                    groupValue: selectedPaymentMethod,
                    onChanged: (v) {
                      ref.read(selectedPaymentMethodProvider.notifier).state =
                          v!;
                    },
                  ),
                ),
              ],
            ),
            Divider(color: Color(0xffEFF2F6)),
            //column 1 of the first payment tile
            Row(
              children: [
                //logo
                Container(
                  height: 56.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF7F8FA),
                  ),
                  child: Image.asset(AppImages.gPay),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Google Pay",
                      style: textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff030527),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "feronica98@gmail.com",
                      style: textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff030527),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Radio<int>(
                    value: 3,
                    groupValue: selectedPaymentMethod,
                    onChanged: (v) {
                      ref.read(selectedPaymentMethodProvider.notifier).state =
                          v!;
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
