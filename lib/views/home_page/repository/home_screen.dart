import 'package:flutter/material.dart';

import '../../../widget/banner_widget.dart';
import '../../../widget/category_card.dart';
import '../../../widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List image = [
    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
    "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar(),
        SliverGrid.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 6,
          itemBuilder: (context, index) {
            return CategoryCard(
              image: "assets/images/1.jpg",
              nameCategory: "Buy Product",
              color: Colors.white,
            );
          },
        ),
        SliverList.separated(
          itemBuilder: (context, index) {
            return BannerWidget(
              image:
                  "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: 10,
        )
      ],
    );
  }
}
