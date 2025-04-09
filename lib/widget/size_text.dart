import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';

class SizeText extends StatelessWidget {
  SizeText({super.key, required this.sizeText});
  String sizeText;

  @override
  Widget build(BuildContext context) {
    return Text(
      sizeText,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: borderColor),
    );
  }
}
