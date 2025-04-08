import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:todo_lesson/common/common.dart';

class MoreProductScreen extends StatefulWidget {
  @override
  _MoreProductScreenState createState() => _MoreProductScreenState();
}

class _MoreProductScreenState extends State<MoreProductScreen> {
  List<String> itemImage = ["1.jpg", "2.jpg", "3.jpg"];
  CarouselSliderController? _controller = CarouselSliderController();
  int _currentIndex = 0; // This will track the current image index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Sahib Akira Sahib Pesticides Pvt ..."),
      ),
      body: Column(
        children: [
          CarouselSlider(
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
              height: 300,
              initialPage: _currentIndex,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            controller: _controller,
          ),
          SizedBox(
              height:
                  10), // Add some space between the carousel and the indicators
          Row(
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
                    // Inactive dot color
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
          TitleText(
            title: "Sahib Akira Sahib Pesticides Pvt Ltd 500 Milliliter",
          ),
          Row(
            children: [
              TypeProduct(),
              TypeProduct(),
            ],
          )
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  TitleText({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class TypeProduct extends StatelessWidget {
  const TypeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          HeaderText(headerText: "Pack of 1"),
          SizeText(sizeText: "1 Liter"),
          Divider(),
          PriceText(priceTetx: "450 #")
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  HeaderText({super.key, required this.headerText});
  String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SizeText extends StatelessWidget {
  SizeText({super.key, required this.sizeText});
  String sizeText;

  @override
  Widget build(BuildContext context) {
    return Text(
      sizeText,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: borderColor),
    );
  }
}

class PriceText extends StatelessWidget {
  PriceText({super.key, required this.priceTetx});
  String priceTetx;

  @override
  Widget build(BuildContext context) {
    return Text(
      priceTetx,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: priceTextColor),
    );
  }
}
