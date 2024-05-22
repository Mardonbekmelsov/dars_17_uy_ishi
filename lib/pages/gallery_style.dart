import 'package:dars_17_uy_ishi/data/products_list.dart';
import 'package:dars_17_uy_ishi/widgets/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GalleryStyle extends StatelessWidget {
  bool isReverse;
  List<Product> products1;
  GalleryStyle({super.key, required this.isReverse, required this.products1});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey.shade300,
      child: ListView(
        reverse: isReverse,
        children: [for(var product in products1) productWidget(1, product)],
      ),
    );
  }
}
