import 'package:dars_17_uy_ishi/data/products_list.dart';
import 'package:dars_17_uy_ishi/widgets/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BarStyle extends StatelessWidget {
  bool isReverse;
  List<Product> products1;
  BarStyle({required this.isReverse, required this.products1});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: GridView(
        reverse: isReverse,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 289, crossAxisSpacing: 15),
        children: [for (var product in products1) productWidget(3, product)],
      ),
    );
  }
}
