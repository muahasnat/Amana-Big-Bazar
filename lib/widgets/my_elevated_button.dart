import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;
  Color? buttonColor;
  final String buttonText;
  final VoidCallback onPressed;
  final double fontSize;

  MyButton(
      {Key? key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonColor,
      required this.buttonText,
      required this.fontSize,
      required this.onPressed})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.buttonColor)),
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: widget.fontSize),
        ),
      ),
    );
  }
}
