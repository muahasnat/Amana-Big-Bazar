import 'package:flutter/material.dart';

class MyFlatIcons extends StatefulWidget {
  IconData? icons;
  MyFlatIcons({Key? key, this.icons}) : super(key: key);

  @override
  State<MyFlatIcons> createState() => _MyIconsState();
}

class _MyIconsState extends State<MyFlatIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(color: Colors.grey),
      child: Icon(
        widget.icons,
        color: Colors.green,
      ),
    );
  }
}
