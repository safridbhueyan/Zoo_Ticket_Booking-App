import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/select_provider.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_Button.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/custom_selection_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: Column(
        children: [
          Padding(
            padding: AppPadding.screenHorizontal,
            child: CommonWidgets.customAppBar(),
          ),
          SizedBox(height: 25.h),
          GlassContainer(
            isBlur: false,
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 32.h,
              bottom: 32.h,
            ),
            width: 343.w,
            height: deviceHeight < 700 ? 460.h : 448.h,
            child: Column(
              children: [
                Text(
                  "Select Ticket Type",
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 24.h),
                CustomSelectionContainer(
                  title: 'General Admission',
                  index: 0,
                  img: AppIcons.tickets,
                ),
                SizedBox(height: 8.h),
                CustomSelectionContainer(
                  title: 'Birthday Party',
                  index: 1,
                  img: AppIcons.cakeIcon,
                ),
                SizedBox(height: 8.h),
                CustomSelectionContainer(
                  title: 'Field Trip',
                  index: 2,
                  img: AppIcons.carIcon,
                ),
                SizedBox(height: 32.h),
                Consumer(
                  builder: (context, ref, _) {
                    final selectionIndex = ref.watch(selectedTileProvider);
                    return CustomButton(
                      onTap: () {
                        if (selectionIndex == 0) {
                          context.push(RouteName.generalAdmissionScreen);
                          debugPrint("$selectionIndex");
                        } else if (selectionIndex == 1) {
                          context.push(RouteName.birthdayScreen);
                          debugPrint("$selectionIndex");
                        } else if (selectionIndex == 2) {
                          context.push(RouteName.fieldtripScreen);
                          debugPrint("$selectionIndex");
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
