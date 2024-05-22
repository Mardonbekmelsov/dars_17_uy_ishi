import 'package:dars_17_uy_ishi/data/products_list.dart';
import 'package:dars_17_uy_ishi/pages/bar_style.dart';
import 'package:dars_17_uy_ishi/pages/gallery_style.dart';
import 'package:dars_17_uy_ishi/pages/list_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var searchController = TextEditingController();
  bool isReverse = false;
  List<Product> products1 = products;
  Icon icon = Icon(CupertinoIcons.square_stack_fill);
  ScrollController scrollController = ScrollController();
  Widget body = GalleryStyle(
    isReverse: false,
    products1: products,
  );
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        leadingWidth: 340,
        leading: Row(
          children: [
            SizedBox(
              width: 24,
            ),
            Container(
              width: 270,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Search Products",
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          body = index == 1
                              ? GalleryStyle(
                                  isReverse: isReverse,
                                  products1: products1
                                      .where(
                                        (element) =>
                                            element.name.toLowerCase().contains(
                                                  searchController.text
                                                      .toLowerCase(),
                                                ),
                                      )
                                      .toList())
                              : index == 2
                                  ? ListStyle(
                                      isReverse: isReverse,
                                      products1: products1
                                          .where(
                                            (element) => element.name
                                                .toLowerCase()
                                                .contains(
                                                  searchController.text
                                                      .toLowerCase(),
                                                ),
                                          )
                                          .toList())
                                  : BarStyle(
                                      isReverse: isReverse,
                                      products1: products1
                                          .where(
                                            (element) => element.name
                                                .toLowerCase()
                                                .contains(
                                                  searchController.text
                                                      .toLowerCase(),
                                                ),
                                          )
                                          .toList());
                        });
                      },
                      icon: Icon(CupertinoIcons.search)),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isReverse = !isReverse;
                });
              },
              icon: Icon(Icons.swap_vert)),
          PopupMenuButton(
            icon: icon,
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  setState(
                    () {
                      index = 1;
                      icon = Icon(CupertinoIcons.square_stack_fill);
                      body = GalleryStyle(
                        isReverse: isReverse,
                        products1: products1,
                      );
                    },
                  );
                },
                child: Text("Gallery"),
              ),
              PopupMenuItem(
                onTap: () {
                  setState(
                    () {
                      index = 2;
                      icon = Icon(CupertinoIcons.list_bullet);
                      body = ListStyle(
                        isReverse: isReverse,
                        products1: products1,
                      );
                    },
                  );
                },
                child: Text("List"),
              ),
              PopupMenuItem(
                onTap: () {
                  setState(
                    () {
                      index = 3;
                      icon = Icon(CupertinoIcons.table_fill);
                      body = BarStyle(
                        products1: products1,
                        isReverse: isReverse,
                      );
                    },
                  );
                },
                child: Text("Bar"),
              ),
            ],
          ),
        ],
      ),
      body: body,
    );
  }
}
