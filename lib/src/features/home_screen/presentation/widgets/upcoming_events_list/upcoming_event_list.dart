import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constant/padding.dart';
import '../experience_list/experience_list_card.dart';

class UpComingEventList extends StatelessWidget {
  const UpComingEventList({super.key});

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
          child: Text("Upcoming Events", style: textTheme.bodyLarge),
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
                    ? "Exclusive Sunset Safari"
                    : "Animal Adventure Tour",
                thumbnailPath: idOdd
                    ? 'assets/images/home_screen/upcoming_event_1.png'
                    : "assets/images/home_screen/upcoming_event_2.png",
                body: 'Embark on a magical sunset safari',
                time: '12 Jun 2025',
              );
            },
          ),
        ),
      ],
    );
  }
}
