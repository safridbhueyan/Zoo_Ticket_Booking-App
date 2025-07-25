import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTileProvider = StateProvider<int>((ref) => -1);

// final generalAdmissionProvider = StateNotifierProvider<SelectNotifier, bool>(
//   (ref) => SelectNotifier(),
// );

// final birthdayPartyProvider = StateNotifierProvider<SelectNotifier, bool>(
//   (ref) => SelectNotifier(),
// );

// final fieldTripProvider = StateNotifierProvider<SelectNotifier, bool>(
//   (ref) => SelectNotifier(),
// );

// class SelectNotifier extends StateNotifier<bool>{
//   SelectNotifier():super(false);

//   void toggle(){
//     state = !state;
//   }
// }
