import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/profile_screen/screens/my_bookings/widgets/my_booking_card.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

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
              title: Text('My Bookings'),
            ),
            SizedBox(height: 20.h),
            GlassContainer(
              padding: EdgeInsets.all(5.r),
              isBlur: false,
              child: Column(
                children: [
                  MyBookingCard(textTheme: textTheme),
                  MyBookingCard(textTheme: textTheme),
                  MyBookingCard(textTheme: textTheme),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
