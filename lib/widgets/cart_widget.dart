import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class CartWidget extends BaseWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Cart")),
      color: Colors.blue,
    );
  }
}
