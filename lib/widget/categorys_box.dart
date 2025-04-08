import 'package:flutter/material.dart';

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
  Border(
    left: BorderSide(
      color: Colors.black,
    ),
    bottom: BorderSide(
      color: Colors.black,
    ),
    top: BorderSide.none,
    right: BorderSide.none,
  ),
  Border(
    left: BorderSide(
      color: Colors.black,
    ),
    bottom: BorderSide(
      color: Colors.black,
    ),
    top: BorderSide.none,
    right: BorderSide(
      color: Colors.black,
    ),
  ),
  Border(
    left: BorderSide(
      color: Colors.black,
    ),
    top: BorderSide(
      color: Colors.black,
    ),
    bottom: BorderSide(color: Colors.black),
    right: BorderSide(
      color: Colors.black,
    ),
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
