import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';

class MainlyUsedButton extends StatelessWidget {
  MainlyUsedButton(
      {super.key, required this.onCklickButton, required this.title});
  String title;
  var onCklickButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: mainlyUsedColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          onTap: onCklickButton,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: mainlyUsedTextButton,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
