import 'package:dars_17_uy_ishi/widgets/product.dart';
import 'package:flutter/material.dart';

class BarStyle extends StatelessWidget {
  bool isReverse;
  BarStyle({required this.isReverse});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: GridView(
        reverse: isReverse,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 289, crossAxisSpacing: 15),
        children: [
          for (int i = 0; i < 10; i++) product(3),
        ],
      ),
    );
  }
}
