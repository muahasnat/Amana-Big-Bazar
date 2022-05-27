import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double textSize;
  Color? textColor;
  final FontWeight fontWeight;

  MyText(
      {Key? key,
      required this.text,
      required this.textSize,
      this.fontWeight = FontWeight.w500,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: textSize,
        color: textColor,
      ),
    );
  }
}
