import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';

class AnimalsShowCard extends StatelessWidget {
  final String animalImage;
  final String animalName;
  final bool isNew;
  const AnimalsShowCard({
    super.key,
    required this.animalName,
    required this.animalImage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GlassContainer(
      padding: EdgeInsets.all(8.r),
      isBlur: false,
      child: Column(
        spacing: 8.h,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(animalImage, fit: BoxFit.cover),
                ),
                if (isNew)
                  Positioned(
                    top: 8.h,
                    right: 8.5.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          colors: [Color(0xffFD913F), Color(0xffFFEC7F)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Text(
                        "New",
                        style: textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Text(
            animalName,
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
