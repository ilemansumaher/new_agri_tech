import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';
import 'package:todo_lesson/widget/size_text.dart';
import '../../../widget/count_product.dart';
import '../../../widget/mainly_used_button.dart';
import '../../../widget/title_text.dart';
import 'component/type_product.dart';

class MoreProductScreen extends StatefulWidget {
  @override
  _MoreProductScreenState createState() => _MoreProductScreenState();
}

class _MoreProductScreenState extends State<MoreProductScreen> {
  List<String> itemImage = ["1.jpg", "2.jpg", "3.jpg"];
  CarouselSliderController? _controller = CarouselSliderController();
  int _currentIndex = 0; // This will track the current image index
  int _chossenProduct = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Sahib Akira Sahib Pesticides Pvt ..."),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CarouselSlider(
                          items: itemImage.map((image) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/$image"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.25,
                            initialPage: _currentIndex,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          controller: _controller,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            itemImage.length,
                            (index) => GestureDetector(
                              onTap: () {
                                _controller?.animateToPage(index,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                height: 10,
                                width: _currentIndex == index ? 20 : 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: _currentIndex == index
                                      ? Colors.blue // Active dot color
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        height: 3,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TitleText(
                          title:
                              "Sahib Akira Sahib Pesticides Pvt Ltd 500 Milliliter",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              TypeProduct(
                                chossen: _chossenProduct == i ? true : false,
                                onTapButton: () {
                                  setState(() {
                                    _chossenProduct = i;
                                  });
                                },
                              ),
                          ],
                        ),
                      ),
                      CountProduct(
                        title: " Quantity",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MainlyUsedButton(onCklickButton: () {}, title: "Add to Cart")
        ],
      ),
    );
  }
}
