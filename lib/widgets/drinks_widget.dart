import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class DrinksWidget extends BaseWidget {
  const DrinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Drinks")),
      color: Colors.blue,
    );
  }
}
