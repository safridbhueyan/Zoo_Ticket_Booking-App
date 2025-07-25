import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/features/profile_screen/widgets/profile_section.dart';
import '../widget_list/widget_list_part.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: SafeArea(
        child: Padding(
          padding: AppPadding.screenHorizontal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CommonWidgets.customAppBar(),
                SizedBox(height: 24.h),
                ProfileCard(),
                ProfileSections(
                  textTheme: textTheme,
                  title: 'Manage Accounts',

                  ///List of widget for all section
                  widgetList: AccountWidgetList.manageAccount(context),
                ),
                ProfileSections(
                  textTheme: textTheme,
                  title: 'Bookings',

                  ///List of widget for all section
                  widgetList: AccountWidgetList.bookings(context),
                ),

                ProfileSections(
                  textTheme: textTheme,
                  title: 'Support & Help',

                  ///List of widget for all section
                  widgetList: AccountWidgetList.helpSupport(context),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
