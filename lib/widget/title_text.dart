import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
