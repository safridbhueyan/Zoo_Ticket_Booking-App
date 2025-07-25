import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/icons.dart';
import 'package:zoo_app/core/theme/theme_extension/app_colors.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';

import '../../../../../../core/constant/padding.dart';
import 'experience_list_card.dart';

class ExperienceList extends StatelessWidget {
  const ExperienceList({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Padding(
          padding: AppPadding.screenHorizontal,
          child: Text("Experiences", style: textTheme.bodyLarge),
        ),
        SizedBox(
          height: deviceHeight < 700 ? 355.h : 335.h,
          child: ListView.builder(
            padding: AppPadding.screenHorizontal,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final idOdd = index % 2 == 0;
              return ExperienceListCard(
                title: idOdd
                    ? "Safari Adventure Tour"
                    : "Animal Adventure Tour",
                thumbnailPath: idOdd
                    ? 'assets/images/home_screen/safari_adventure_tour.png'
                    : "assets/images/home_screen/animal_adventure_tour.png",
                body: 'Guided tour through our safari zone',
                time: '60 min',
              );
            },
          ),
        ),
      ],
    );
  }
}
