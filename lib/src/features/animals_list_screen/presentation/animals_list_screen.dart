import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/constant/padding.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/features/animals_list_screen/presentation/widgets/animals_show_card.dart';

import '../riverpod/animals_list_notifier.dart';

class AnimalsListScreen extends StatelessWidget {
  const AnimalsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return CreateScreen(
      child: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          spacing: 24.h,
          children: [
            Row(
              spacing: 12.w,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonWidgets.backButton(context: context),
                Text("Animals", style: textTheme.bodyLarge),
              ],
            ),
            Expanded(
              child: Consumer(
                builder: (_, ref, _) {
                  final animalsList = ref
                      .watch(animalListProvider.notifier)
                      .animalsList;
                  return GridView.builder(
                    itemCount: animalsList.length,
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.h,
                      crossAxisSpacing: 12.h,
                    ),
                    itemBuilder: (_, index) {
                      final animal = animalsList[index];
                      return AnimalsShowCard(
                        animalImage: animal['animalImage'],
                        animalName: animal['animalName'],
                        isNew: animal['isNew'],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
