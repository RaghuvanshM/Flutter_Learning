import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppSmallText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppSmallText(
      {Key? key,
      required this.text,
      this.size = 16,
      this.color = Colors.black54})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
