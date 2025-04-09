import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';

class PriceText extends StatelessWidget {
  PriceText({
    super.key,
    required this.priceTetx,
    required this.chossenBackground,
  });

  final String priceTetx;
  final bool chossenBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: chossenBackground
            ? chossenProductBackground
            : unChossenProductBottomSide,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.0)),
        border: Border(
          top: BorderSide(
            color: chossenBackground ? chossenProductBorder : borderColor,
          ),
        ),
      ),

      width: double.infinity,

      alignment: Alignment.center, // Ensures the text is centered
      child: Text(
        priceTetx,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: priceTextColor,
        ),
      ),
    );
  }
}
