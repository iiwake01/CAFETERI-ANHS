import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class MealsWidget extends BaseWidget {
  const MealsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Meals")),
      color: Colors.blue,
    );
  }
}
