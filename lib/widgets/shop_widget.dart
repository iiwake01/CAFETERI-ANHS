import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class ShopWidget extends BaseWidget {
  const ShopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.blue,
          Colors.pink,
        ],
      )),
    );
  }
}
