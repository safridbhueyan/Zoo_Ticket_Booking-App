import 'package:flutter/material.dart';
import 'package:zoo_app/src/common_widgets/custom_animated_switch/custom_animated_switch.dart';

class NotificationRow extends StatelessWidget {
  final String title;
  final bool isSwitchedOn;
  final Function(bool) onChanged;

  const NotificationRow({
    super.key,
    required this.title,
    required this.isSwitchedOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        CustomAnimatedSwitcher(
          isSwitchedOn: isSwitchedOn,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
