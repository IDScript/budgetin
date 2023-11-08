import 'package:flutter/material.dart';

class CurvedNavBar extends StatelessWidget {
  final Color? buttonBackgroundColor;
  final double height;
  final Color color;

  final Color backgroundColor;

  const CurvedNavBar({
    super.key,
    this.buttonBackgroundColor,
    this.backgroundColor = Colors.transparent,
    this.color = Colors.blueAccent,
    this.height = 75.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: height,
      child: const Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [],
      ),
    );
  }
}
