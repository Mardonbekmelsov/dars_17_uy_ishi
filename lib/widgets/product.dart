import 'package:dars_17_uy_ishi/data/products_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

Widget productWidget(int index, Product product) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: index == 2
            ? Row(
                children: [
                  Container(
                    width: 150,
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/car.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.blue,
                          child: const Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product.name),
                          const Icon(CupertinoIcons.heart)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                        child: const Text("New"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${product.price}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                      Text(
                        product.address,
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: index == 1 ? double.infinity : 150,
                    height: index == 1 ? 200 : 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/car.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.blue,
                          child: const Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                        ),
                      ),
                      const Icon(CupertinoIcons.heart)
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: const Text("New"),
                  ),
                  Text(
                    "${product.price}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  Text(product.address),
                ],
              ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}
