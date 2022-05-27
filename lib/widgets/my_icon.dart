import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  MyIcon(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
      size: iconSize,
    );
  }
}
