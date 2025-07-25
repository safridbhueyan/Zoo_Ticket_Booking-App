import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/faq_data.dart';
import '../model/faq_model.dart';

class FAQNotifier extends StateNotifier<List<FAQModel>> {
  FAQNotifier(super.initialStateNotifier);
  void toggleFAQ(int index) {
    state[index] = state[index].copyWith(isExpanded: !state[index].isExpanded);
    state = [...state];
  }
}

final faqNotifierProvider = StateNotifierProvider<FAQNotifier, List<FAQModel>>((
  ref,
) {
  return FAQNotifier(faqList);
});
