import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:flutter/material.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../widgets/profile_section.dart';
import 'widgets/payment_card.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          children: [
            AppBar(
              leading: CommonWidgets.backButton(context: context),
              title: Text('Payment Details', style: textTheme.titleSmall),
            ),
            SizedBox(height: 24.h),
            ProfileSections(
              textTheme: textTheme,
              widgetList: [
                PaymentCard(
                  textTheme: textTheme,
                  title: 'Apple Pay',
                  image: AppImages.applePay,
                  status: "Connected",
                ),
                PaymentCard(
                  textTheme: textTheme,
                  title: 'Google Pay',
                  image: AppImages.googlePay,
                  status: "Connected",
                ),
                PaymentCard(
                  textTheme: textTheme,
                  title: 'PayPal',
                  image: AppImages.paypal,
                  status: "Connected",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
