import 'package:flutter_riverpod/flutter_riverpod.dart';

final expansionStateProvider = StateProvider<bool>((ref) => false);
final extraGuestsProvider = StateProvider<int>((ref) => 1);
final customCakeProvider = StateProvider<int>((ref) => 0);
final safariMascotProvider = StateProvider<int>((ref) => 0);
final photographyPackageProvider = StateProvider<int>((ref) => 0);
final animalInvitationsProvider = StateProvider<int>((ref) => 0);
//dropdown provider
final selectedDropdownValueProvider = StateProvider<String?>((ref) {
  return '1';
});

final selectedPaymentMethodProvider = StateProvider<int>((ref) => 1);
