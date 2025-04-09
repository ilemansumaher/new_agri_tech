import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_lesson/common/common.dart';
import 'package:todo_lesson/views/more_product_page/controller/count_product_controller.dart';
import 'package:todo_lesson/widget/size_text.dart';

class CountProduct extends StatelessWidget {
  CountProduct({super.key, this.title});
  String? title;
  CountrProductController _controller = CountrProductController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizeText(sizeText: title!),
        ),
        Container(
          padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: Row(
            children: [
              Observer(builder: (_) {
                return Ink(
                  decoration: BoxDecoration(
                    color: _controller.count >= 1
                        ? mainlyUsedColor
                        : unChossenProductBottomSide,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: GestureDetector(
                    onTap: _controller.decriment,
                    child: Icon(
                      Icons.remove,
                      color: mainlyUsedTextButton,
                    ),
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Observer(builder: (_) {
                  return Text(
                    "${_controller.count}",
                  );
                }),
              ),
              Ink(
                decoration: BoxDecoration(
                  color: mainlyUsedColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: GestureDetector(
                  onTap: _controller.inceriment,
                  child: Icon(
                    Icons.add,
                    color: mainlyUsedTextButton,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
