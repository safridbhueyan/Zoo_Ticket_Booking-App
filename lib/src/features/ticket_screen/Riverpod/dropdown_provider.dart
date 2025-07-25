import 'package:flutter_riverpod/flutter_riverpod.dart';

final adultsCountProvider = StateProvider<String>((ref) => '3');

final childrenCountProvider = StateProvider<String>((ref) => '3');
