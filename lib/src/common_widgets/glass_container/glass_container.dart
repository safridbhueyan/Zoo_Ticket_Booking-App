import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GlassContainer extends StatelessWidget {
  final Color? color;
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final bool isBlur;
  const GlassContainer({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.padding,
    this.margin,
    required this.child,
    required this.isBlur,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: color ?? Colors.white.withValues(alpha: 0.8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: isBlur
            ? BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
                child: Padding(padding: padding, child: child),
              )
            : Padding(padding: padding, child: child),
      ),
    );
  }
}
