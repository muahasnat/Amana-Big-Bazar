import 'package:flutter/material.dart';

class MyTextButtonn extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double fontSize;
  Color? textColor;
  MyTextButtonn(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      required this.fontSize,
      required this.textColor})
      : super(key: key);

  @override
  State<MyTextButtonn> createState() => _TextButtonnState();
}

class _TextButtonnState extends State<MyTextButtonn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        widget.buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(color: widget.textColor, fontSize: widget.fontSize),
      ),
    );
  }
}
