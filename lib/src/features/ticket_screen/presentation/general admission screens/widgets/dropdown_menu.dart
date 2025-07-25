import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/src/features/ticket_screen/Riverpod/custom_tile_provider.dart';

void showNumberMenu(
  BuildContext context,
  GlobalKey key,
  WidgetRef ref,
  StateProvider<String> provider,
) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final RenderBox renderBox =
      key.currentContext!.findRenderObject() as RenderBox;
  final Offset offset = renderBox.localToGlobal(
    Offset.zero,
  ); // top-left position
  final Size size = renderBox.size;

  showMenu<String>(
    context: context,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    position: RelativeRect.fromRect(
      offset & const Size(40, 40),
      Offset.zero & overlay.size,
    ),
    items: [
      PopupMenuItem<String>(
        value: "1",
        child: Row(children: [const Text("1", style: TextStyle(fontSize: 16))]),
      ),
      PopupMenuItem<String>(
        value: "2",
        child: Row(children: [const Text("2", style: TextStyle(fontSize: 16))]),
      ),
      PopupMenuItem<String>(
        value: "3",
        child: Row(children: [const Text("3", style: TextStyle(fontSize: 16))]),
      ),
      PopupMenuItem<String>(
        value: "4",
        child: Row(children: [const Text("4", style: TextStyle(fontSize: 16))]),
      ),
      PopupMenuItem<String>(
        value: "5",
        child: Row(children: [const Text("5", style: TextStyle(fontSize: 16))]),
      ),
    ],
  ).then((String? value) {
    if (value != null) {
      // Update the selected value in Riverpod
      ref.read(provider.notifier).state = value;
    }
  });
}
