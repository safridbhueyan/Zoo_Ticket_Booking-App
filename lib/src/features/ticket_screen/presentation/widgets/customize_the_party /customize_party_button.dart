import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/widgets/customize_the_party%20/custome_catatgory.dart';

class CustomizePartyButton extends StatelessWidget {
  const CustomizePartyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer(
      builder: (context, ref, _) {
        final isexpanded = ref.watch(expansionStateProvider);
        return GestureDetector(
          onTap: () {
            ref.read(expansionStateProvider.notifier).state = true;
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 327.w,
            height: isexpanded ? 346.h : 56.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.onPrimary,
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 12.h,
                horizontal: 16.w,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Customize Your Party",
                        style: textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      Spacer(),
                      isexpanded
                          ? GestureDetector(
                              onTap: () {
                                ref
                                        .read(expansionStateProvider.notifier)
                                        .state =
                                    false;
                              },
                              child: SvgPicture.asset(AppIcons.minusIcon),
                            )
                          : SvgPicture.asset(AppIcons.addIcon),
                    ],
                  ),

                  if (isexpanded == true) ...[
                    SizedBox(height: 16.h),
                    CustomeCatatgory(
                      title: 'Extra Guests (+\$10 per person)',
                      isDropdwonOk: true,
                      onTap: () {},
                    ),
                    CustomeCatatgory(
                      title: 'Custom Cake (+\$60)',
                      isDropdwonOk: false,
                      onTap: () {},
                    ),
                    CustomeCatatgory(
                      title: 'Safari Mascot Appearance (+\$75)',
                      isDropdwonOk: false,
                      onTap: () {},
                    ),
                    CustomeCatatgory(
                      title: 'Photography Package (+\$100)',
                      isDropdwonOk: false,
                      onTap: () {},
                    ),
                    CustomeCatatgory(
                      title: 'Animal-themed Invitations (+\$20)',
                      isDropdwonOk: false,
                      onTap: () {},
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
