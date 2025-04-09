import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';
import 'package:todo_lesson/views/more_product_page/repository/more_product_screen.dart';
import 'package:todo_lesson/widget/header_text.dart';
import 'package:todo_lesson/widget/size_text.dart';

import 'price_text.dart';

class TypeProduct extends StatelessWidget {
  TypeProduct({super.key, required this.chossen, required this.onTapButton});
  bool chossen = false;
  var onTapButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapButton,
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: chossen ? chossenProductBackground : null,
            border: Border.all(
              color: chossen ? chossenProductBorder : borderColor,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: HeaderText(headerText: "Pack of 1"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SizeText(sizeText: "1 Liter"),
              ),
              PriceText(chossenBackground: chossen, priceTetx: "450 #")
            ],
          ),
        ),
      ),
    );
  }
}
