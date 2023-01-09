import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class JunkFoodWidget extends BaseWidget {
  const JunkFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("JunkFood")),
      color: Colors.blue,
    );
  }
}