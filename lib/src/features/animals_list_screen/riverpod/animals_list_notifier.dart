import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/src/features/animals_list_screen/riverpod/animals_list_state.dart';

final animalListProvider =
    StateNotifierProvider<AnimalsListNotifier, AnimalsListState>(
      (ref) => AnimalsListNotifier(),
    );

class AnimalsListNotifier extends StateNotifier<AnimalsListState> {
  AnimalsListNotifier() : super(AnimalsListState()) {
    fetchAnimalsList();
  }

  final List<Map<String, dynamic>> animalsList = const [
    {"animalName": "Panda", "animalImage": AppImages.panda, "isNew": true},
    {"animalName": "Cow", "animalImage": AppImages.cow, "isNew": false},
    {"animalName": "Donkey", "animalImage": AppImages.donkey, "isNew": false},
    {"animalName": "Bull", "animalImage": AppImages.bull, "isNew": false},
    {"animalName": "Ox", "animalImage": AppImages.ox, "isNew": false},
    {"animalName": "Peacock", "animalImage": AppImages.peacock, "isNew": false},
    {"animalName": "Sujoy", "animalImage": AppImages.sujoy, "isNew": true},
    {"animalName": "Camel", "animalImage": AppImages.camel, "isNew": false},
  ];

  Future<void> fetchAnimalsList() async {
    state = state.copyWith(animalsList: animalsList);
  }
}
