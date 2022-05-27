import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction actionKeyboard;
  FormFieldValidator? validator;

  MyTextFormField(
      {required this.hintText,
      required this.textInputType,
      this.obscureText = false,
      required this.controller,
      this.actionKeyboard = TextInputAction.next,
      this.prefixIcon = Icons.abc,
      this.validator});

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        controller: widget.controller,
      ),
    );
  }
}
