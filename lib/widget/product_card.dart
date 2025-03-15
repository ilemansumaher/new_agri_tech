import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/1.jpg', fit: BoxFit.cover,),
          Divider(),
          Text('Product Name', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('₹345', style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
