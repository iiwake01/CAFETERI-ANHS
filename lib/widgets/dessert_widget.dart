import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class DessertWidget extends BaseWidget {
  const DessertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Dessert")),
      color: Colors.blue,
    );
  }
}
