import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoo_app/core/constant/images.dart';
import 'package:zoo_app/core/constant/padding.dart';

class CreateScreen extends StatelessWidget {
  final Widget child;
  final bool useSafeArea;

  const CreateScreen({super.key, this.useSafeArea = true, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// Background Image
          Positioned.fill(
            child: Image.asset(AppImages.screenBackground, fit: BoxFit.cover),
          ),

          /// Foreground Widget
          Positioned.fill(child: useSafeArea ? SafeArea(child: child) : child),
        ],
      ),
    );
  }
}
