import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  FontWeight fontWeight;
  HeaderText({super.key, required this.headerText , this.fontWeight =FontWeight.bold});
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
