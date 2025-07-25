import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zoo_app/core/routes/route_name.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1200), () {
        if (mounted) {
          context.go(RouteName.signInScreen);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CreateScreen(
      child: Center(
        child: SizedBox(
          width: 242.w,
          height: 242.h,
          child: Image.asset("assets/logo/app_logo.png"),
        ),
      ),
    );
  }
}
