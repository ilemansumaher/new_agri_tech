import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.image,
    required this.nameCategory,
    required this.color,
  });
  String image;
  Color color;
  String nameCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 150,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
            ),
            child: Image.asset(
              image,
            ),
          ),
        ),
        Text(
          nameCategory,
        ),
      ],
    );
  }
}
