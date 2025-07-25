import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme_extension/app_colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadiusGeometry.circular(12.r),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://randomuser.me/api/portraits/men/10.jpg',
              height: 56.h,
              width: 56.w,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const CircularProgressIndicator(
                  color: AppColors.primary,
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.person);
              },
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello Fara!', style: textTheme.titleSmall),
              Text('faraguevara@gmail.com', style: textTheme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
