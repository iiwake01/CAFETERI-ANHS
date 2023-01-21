import 'package:flutter/material.dart';

import '../controllers/main_controller.dart';
import 'base_widgets.dart';
import 'cart_widget.dart';

class FloatingActionButtonWidget extends BaseWidget<MainController> {
  const FloatingActionButtonWidget(
      {super.key, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return CartWidget();
            },
          ),
        );
      },
      child: Icon(Icons.shopping_cart_checkout),
      mini: true,
      backgroundColor: Colors.orange[400],
    );
  }
}
