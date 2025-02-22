import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        image: DecorationImage(
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
