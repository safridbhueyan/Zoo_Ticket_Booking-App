import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/logos.dart';

class ThirdPartySignIn extends StatelessWidget {
  const ThirdPartySignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16.w,
      children: [
        GestureDetector(
          onTap: () {
            debugPrint("\n Google sign in\n");
          },
          child: SvgPicture.asset(AppLogo.google, width: 48.w, height: 48.w),
        ),
        GestureDetector(
          onTap: () {
            debugPrint("\nFacebook sign in\n");
          },
          child: SvgPicture.asset(AppLogo.facebook, width: 48.w, height: 48.w),
        ),
      ],
    );
  }
}
