import 'package:flutter/material.dart';

import '../../../widget/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 6,
            itemBuilder: (context, index) {
              return CategoryCard(
                image:
                    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
                nameCategory: "Buy Product",
                color: Colors.white,
              );
            },
          ),
        ),
        BannerWidget(
          image:
              "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
        ),
        BannerWidget(
          image:
              "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
        ),
        BannerWidget(
          image:
              "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
        ),
      ],
    );
  }
}

class BannerWidget extends StatelessWidget {
  BannerWidget({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width*0.9,
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
