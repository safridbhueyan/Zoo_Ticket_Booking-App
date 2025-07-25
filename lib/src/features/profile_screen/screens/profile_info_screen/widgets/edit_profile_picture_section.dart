import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/constant/icons.dart';
import '../../../../../../core/theme/theme_extension/app_colors.dart';

class EditProfileImageSection extends StatelessWidget {
  const EditProfileImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                padding: EdgeInsets.all(2.r), // white border
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondary.withOpacity(0.75),
                ),
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/10.jpg',
                  ), // Replace with actual image path
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(AppIcons.editProfile),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
