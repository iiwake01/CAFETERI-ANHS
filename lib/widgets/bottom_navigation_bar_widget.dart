import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'base_widgets.dart';

class BottomNavigationBarWidget extends BaseWidget<MainController> {
  
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx( () {
      return SalomonBottomBar(
          currentIndex: controller.getIndex(),
          duration: const Duration(milliseconds: 1000),
          onTap: (index) {
            controller.setIndex(index);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Shop"),
              selectedColor: Colors.purple,
            ),

            SalomonBottomBarItem(
                icon: Icon(Icons.shopping_basket),
                title: Text("Cart"),
                selectedColor: Colors.blue),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        );
    } );
  } 
}