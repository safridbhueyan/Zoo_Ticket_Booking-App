import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/src/common_widgets/common_widgets.dart';
import 'package:zoo_app/src/common_widgets/create_screen/create_screen.dart';
import 'package:zoo_app/src/common_widgets/glass_container/glass_container.dart';
import '../../../../../core/constant/padding.dart';
import '../../data/faq_data.dart';
import 'widgets/faq_question.dart';
import '../../view_model/faq_riverpod.dart';

class FaqScreen extends ConsumerWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CreateScreen(
      child: Padding(
        padding: AppPadding.screenHorizontal.copyWith(left: 13.w, right: 13.w),
        child: Column(
          children: [
            AppBar(
              leading: CommonWidgets.backButton(context: context),
              title: Text('FAQs'),
            ),
            SizedBox(height: 20.h),
            Flexible(
              child: GlassContainer(
                padding: EdgeInsets.all(4),
                isBlur: false,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: faqList.length,
                  itemBuilder: (context, index) {
                    final faqProvider = ref.watch(faqNotifierProvider);
                    return FaqQuestion(
                      isExpanded: faqProvider[index].isExpanded,
                      question: faqProvider[index].question,
                      answer: faqProvider[index].answer,
                      onTap: () {
                        ref.read(faqNotifierProvider.notifier).toggleFAQ(index);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
