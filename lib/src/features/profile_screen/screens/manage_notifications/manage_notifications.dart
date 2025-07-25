import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import '../../view_model/notification_provider.dart';
import '../../widget_list/widget_list_part.dart';
import '../../widgets/profile_section.dart';

class ManageNotifications extends StatelessWidget {
  const ManageNotifications({super.key});

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
              title: Text(
                'Manage Notifications',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 20.h),
            Consumer(
              builder: (context, WidgetRef ref, child) {
                final notificationState = ref.watch(notificationProvider);
                return ProfileSections(
                  textTheme: textTheme,
                  widgetList: AccountWidgetList.notifications(
                    context,
                    ref,
                    notificationState,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
