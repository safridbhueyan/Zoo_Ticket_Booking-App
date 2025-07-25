class AnimalsListState {
  List<Map<String, dynamic>>? animalsList;
  AnimalsListState({this.animalsList});

  AnimalsListState copyWith({List<Map<String, dynamic>>? animalsList}) {
    return AnimalsListState(animalsList: animalsList ?? this.animalsList);
  }
}
