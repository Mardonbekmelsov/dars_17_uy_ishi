import 'package:dars_17_uy_ishi/widgets/product.dart';
import 'package:flutter/material.dart';

class GalleryStyle extends StatelessWidget {
  bool isReverse;
  GalleryStyle({required this.isReverse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey.shade300,
      child: ListView(
        reverse: isReverse,
        children: [for (int i = 0; i < 10; i++) product(1)],
      ),
    );
  }
}
