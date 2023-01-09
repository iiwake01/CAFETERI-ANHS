import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends BaseWidget<MainController> {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: controller.getTabController(),
        children: [
          Icon(Icons.menu),
          Icon(Icons.wine_bar),
          Icon(Icons.food_bank),
          Icon(Icons.fastfood),
          Icon(Icons.icecream),
        ],
      );
  }
}