import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends BaseWidget<MainController> implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
          backgroundColor: Colors.transparent, // backgroundColor: Color.fromARGB(255, 255, 200, 118),
          title: const Text('CAFTERI-ANHS'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          actions: const [
            Icon(Icons.shopping_bag_rounded),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: TabBar(
            controller: controller.getTabController(),
            //onTap: (index) { controller.showTabBarView(); },
            isScrollable: false,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.menu),
                text: ('All'),
              ),
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
            ],
          ),
          elevation: 0,
          titleSpacing: 4,
        ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(120);
  }
}