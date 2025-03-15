import 'package:flutter/material.dart';
import 'package:todo_lesson/views/product_page/product_screen.dart';
import 'package:todo_lesson/widget/banner_widget.dart';
import 'package:todo_lesson/widget/categorys_box.dart';
import 'package:todo_lesson/widget/custom_app_bar.dart';

import '../../../widget/product_card.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar(),
        SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate: SliverChildListDelegate(
              [
                CategorysBox(
                  borderRadius: 1,
                  borderSide: 1,
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
                  borderSide: 4,
                ),
                CategorysBox(
                  borderRadius: 3,
                  borderSide: 2,
                ),
                CategorysBox(
                  borderRadius: 0,
                  borderSide: 2,
                ),
                CategorysBox(
                  borderRadius: 0,
                  borderSide: 2,
                ),
                CategorysBox(
                  borderRadius: 4,
                  borderSide: 3,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverToBoxAdapter(
            child: BannerWidget(
              image:
                  "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Micro Nutrients',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Wiev All",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(5, (index) {
                      return ProductCard();
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Fertilizer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Wiev All",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(5, (index) {
                      return ProductCard();
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverToBoxAdapter(
            child: BannerWidget(
              image:
                  "https://t4.ftcdn.net/jpg/06/05/82/81/360_F_605828148_feogXrlyMcTRRPlAsjXnyir75g015enD.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
