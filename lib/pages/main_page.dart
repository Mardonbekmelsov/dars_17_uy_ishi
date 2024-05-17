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
  bool isReverse = false;
  Icon icon = Icon(CupertinoIcons.square_stack_fill);
  ScrollController scrollController = ScrollController();
  Widget body = GalleryStyle(isReverse: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
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
                      icon = Icon(CupertinoIcons.square_stack_fill);
                      body = GalleryStyle(
                        isReverse: isReverse,
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
                      icon = Icon(CupertinoIcons.list_bullet);
                      body = ListStyle(
                        isReverse: isReverse,
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
                      icon = Icon(CupertinoIcons.table_fill);
                      body = BarStyle(
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
