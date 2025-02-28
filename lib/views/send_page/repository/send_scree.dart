import 'package:flutter/material.dart';
import 'package:todo_lesson/widget/custom_app_bar.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar(),
        SliverGrid(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            
          ),
          delegate: SliverChildListDelegate([
            
            CategorysBox(
              borderRadius: 1,
              borderSide: 0,
            ),
            CategorysBox(
              borderRadius: 0,
              borderSide: 1,
            ),
            CategorysBox(
              borderRadius: 0,
              borderSide: 1,
            ),
            CategorysBox(
              borderRadius: 2,
              borderSide: 1,
            ),
          ]),
        )
      ],
    );
  }
}

class CategorysBox extends StatelessWidget {
  CategorysBox(
      {super.key, required this.borderSide, required this.borderRadius});
  int borderSide;
  int borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: borderSideData[borderSide],
        borderRadius: borderRadiusData[borderRadius],
      ),
    );
  }
}

var borderSideData = [
  Border(
    right: BorderSide(
      color: Colors.black,
    ),
    bottom: BorderSide(
      color: Colors.black,
    ),
    top: BorderSide(
      color: Colors.black,
    ),
  ),
  Border(
    left: BorderSide(
      color: Colors.black,
    ),
    bottom: BorderSide(
      color: Colors.black,
    ),
    top: BorderSide(
      color: Colors.black,
    ),
    right: BorderSide.none,
  ),
];

var borderRadiusData = [
  null,
  BorderRadius.only(
    topLeft: Radius.circular(10.0),
  ),
  BorderRadius.only(
    topRight: Radius.circular(10.0),
  ),
  BorderRadius.only(
    bottomLeft: Radius.circular(10.0),
  ),
  BorderRadius.only(
    bottomRight: Radius.circular(10.0),
  ),
];
