import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'base_widgets.dart';

class FloatingActionButtonWidget extends BaseWidget<MainController> {
  
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        controller.launchCart();
      },
      child: Icon(Icons.shopping_cart_checkout),
      mini: true,
      backgroundColor: Colors.orange[400],
    );
  }
}