import 'package:flutter/material.dart';
import 'package:todo_lesson/widget/banner_widget.dart';
import 'package:todo_lesson/widget/categorys_box.dart';
import 'package:todo_lesson/widget/custom_app_bar.dart';

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
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList.separated(
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
            itemCount: 1,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: ListView.separated(
              padding: EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10.0,
                );
              },
              itemBuilder: (context, index) {
                return ProductScrollBanner();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ProductScrollBanner extends StatelessWidget {
  const ProductScrollBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          SizedBox(
            // height: 60,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.network(
                "https://ichef.bbci.co.uk/news/1024/cpsprodpb/cd29/live/f715f770-fe77-11ef-a0d9-29ad7a7f0cf2.jpg.webp"),
          ),
          Text(
            "Sahib Akira Sahib Pesticides Pvt ...",
          ),
        ],
      ),
    );
  }
}
