import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final TextStyle? textTheme;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.padding,
    this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;

    return SizedBox(
      height: 56.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding ?? EdgeInsets.zero,
          backgroundColor: color,
          elevation: 0,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          title,
          style:
              textTheme ??
              bodyLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
