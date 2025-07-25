import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/features/home_screen/presentation/widgets/discount_card.dart';
import 'package:zoo_app/src/features/home_screen/presentation/widgets/experience_list/experience_list.dart';
import 'package:zoo_app/src/features/home_screen/presentation/widgets/explore_card.dart';
import 'package:zoo_app/src/features/home_screen/presentation/widgets/upcoming_events_list/upcoming_event_list.dart';

import '../../../../core/constant/padding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CreateScreen(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.screenHorizontal,
              child: CommonWidgets.customAppBar(),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: AppPadding.screenHorizontal,
              child: DiscountCard(),
            ),
            SizedBox(height: 24.h),
            Padding(padding: AppPadding.screenHorizontal, child: ExploreCard()),
            SizedBox(height: 24.h),
            ExperienceList(),
            SizedBox(height: 24.h),

            UpComingEventList(),

            SizedBox(height: 145.h),
          ],
        ),
      ),
    );
  }
}
