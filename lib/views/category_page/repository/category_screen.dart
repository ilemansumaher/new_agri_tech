import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';
import 'package:todo_lesson/widget/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: CategoryCard(
                  image: "assets/images/1.jpg",
                  nameCategory: "Seeds",
                  color: Colors.white),
            );
          },
        ),
      ),
    );
  }
}
