import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';

class AccountOptionTile extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Color? iconColor;
  final String? email;
  final String leadingAsset;
  final VoidCallback onPressed;

  const AccountOptionTile({
    super.key,
    required this.title,
    this.titleColor,
    this.email,
    required this.leadingAsset,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(4.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Leading Avatar
            CircleAvatar(
              radius: 26.r,
              backgroundColor: AppColors.secondary,
              child: SvgPicture.asset(leadingAsset, color: iconColor),
            ),
            SizedBox(width: 12.w),

            // Title and trailing content
            Expanded(
              child: Row(
                children: [
                  // Title
                  Expanded(
                    child: Text(
                      title,
                      style: textTheme.bodyMedium!.copyWith(
                        color: titleColor ?? AppColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // Email + Arrow
                  SizedBox(
                    width: email != null ? 120.w : 30.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            email ?? '',
                            style: textTheme.bodySmall!.copyWith(
                              color: AppColors.textColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_right, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
