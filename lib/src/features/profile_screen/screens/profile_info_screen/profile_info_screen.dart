import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import '../../widget_list/widget_list_part.dart';
import '../../widgets/profile_section.dart';
import 'widgets/edit_profile_picture_section.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: SafeArea(
        child: Padding(
          padding: AppPadding.screenHorizontal,
          child: Column(
            children: [
              AppBar(
                leading: CommonWidgets.backButton(context: context),
                title: Text('Profile Information', style: textTheme.titleSmall),
              ),
              EditProfileImageSection(),
              SizedBox(height: 20.h),
              ProfileSections(
                textTheme: textTheme,

                ///List of widget for all section
                widgetList: AccountWidgetList.editProfile(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
