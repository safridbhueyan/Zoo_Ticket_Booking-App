import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive UI

class CustomBottomSheet extends StatelessWidget {
  final Widget child;

  const CustomBottomSheet({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.minimize_rounded, size: 60, color: Colors.black),
          SizedBox(height: 10.h), // AutoSpacer equivalent
          child,
          SizedBox(height: 24.h), // AutoSpacer equivalent
        ],
      ),
    );
  }
}
