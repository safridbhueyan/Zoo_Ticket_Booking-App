import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import 'package:zoo_app/src/features/map_screen/riverpod/google_map_riverpod.dart';

class AnimalZoneGetDirectionCard extends StatelessWidget {
  const AnimalZoneGetDirectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GlassContainer(
      // padding: EdgeInsets.all(12.r),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20.r),
      //   color: Colors.white,
      // ),
      padding: EdgeInsets.all(12.r),
      isBlur: true,
      color: Colors.white.withValues(alpha: 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.h,
              children: [
                Text("Animal Zone", style: textTheme.titleMedium),
                Consumer(
                  builder: (_, ref, _) {
                    final distance = ref
                        .watch(googleMapProvider)
                        .distanceToNearestZoo;
                    return Text(
                      "$distance KM Away",
                      style: textTheme.bodyMedium?.copyWith(
                        color: Color(0xff7C8690),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                spacing: 4.w,
                children: [
                  Icon(Icons.directions, color: Colors.white, size: 20.sp),
                  Text("Get Direction"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
