import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  HeaderText({super.key, required this.headerText});
  String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
