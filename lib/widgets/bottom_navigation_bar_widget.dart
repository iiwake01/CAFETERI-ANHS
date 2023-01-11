import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'base_widgets.dart';

class BottomNavigationBarWidget extends BaseWidget<MainController> {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SalomonBottomBar(
        currentIndex: controller.getBottomIndex(),
        duration: const Duration(milliseconds: 1000),
        onTap: (index) {
          controller.setAppBarEnum(index);
          controller.setTabIndex(index);
          controller.setBottomIndex(index);
        },
        items: <SalomonBottomBarItem> [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Shop"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      );
    });
  }
}