import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('CAFTERI-ANHS'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          actions: [
            Icon(Icons.shopping_bag_rounded),
          ],
          // backgroundColor: Color.fromARGB(255, 255, 200, 118),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.wine_bar),
              text: ('Drinks'),
            ),
            Tab(
              icon: Icon(Icons.food_bank),
              text: ('Meals'),
            ),
            Tab(
              icon: Icon(Icons.fastfood),
              text: ('Junkfood'),
            ),
            Tab(
              icon: Icon(Icons.icecream_rounded),
              text: ('Dessert'),
            )
          ]),
          elevation: 0,
          titleSpacing: 4,
        ),
      ),
    );
  }
}
