import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationStateNotifier extends StateNotifier<Map<String, bool>> {
  NotificationStateNotifier()
    : super({
        'pushNotification': true,
        'paymentSubscriptions': false,
        'newTips': true,
        'surveyInvitation': false,
      });

  void toggleSwitch(String key) {
    state = {...state, key: !state[key]!};
  }
}

// Define a provider for the state
final notificationProvider =
    StateNotifierProvider<NotificationStateNotifier, Map<String, bool>>(
      (ref) => NotificationStateNotifier(),
    );
