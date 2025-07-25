import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/ticket_screen/presentation/birthdayparty%20screen/widgets/package_container.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    return CreateScreen(
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: AppPadding.screenHorizontal,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 50.h, bottom: 120.h),
                child: Column(
                  children: [
                    GlassContainer(
                      width: 342.w,
                      height: deviceHeight < 700 ? 710.h : 680.h,
                      padding: EdgeInsets.all(8),
                      isBlur: false,
                      child: Column(
                        children: [
                          PackageContainer(
                            title: "Basic Safari Package",
                            discription:
                                "Up to 15 guests, 1 party host, reserved picnic area, standard décor, animal encounter, cupcakes",
                            recomendation: "Best Seller",
                            price: "\$350",
                            onTap: () {
                              context.push(RouteName.packageDetailScreen);
                            },
                          ),
                          SizedBox(height: 8.h),
                          PackageContainer(
                            title: "Deluxe Safari Package",
                            discription:
                                "Up to 15 guests, 1 party host, reserved picnic area, standard décor, animal encounter, cupcakes",
                            recomendation: "Recommended",
                            price: "\$350",
                            onTap: () {
                              context.push(RouteName.packageDetailScreen);
                            },
                          ),
                          SizedBox(height: 8.h),
                          PackageContainer(
                            title: "VIP Safari Package",
                            discription:
                                "Up to 15 guests, 1 party host, reserved picnic area, standard décor, animal encounter, cupcakes",
                            recomendation: "Recommended",
                            price: "\$499",
                            onTap: () {
                              context.push(RouteName.packageDetailScreen);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: AppPadding.screenHorizontal,
              child: Row(
                children: [
                  CommonWidgets.backButton(context: context),
                  SizedBox(width: 12.w),
                  Text(
                    "Birthday Party",
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
