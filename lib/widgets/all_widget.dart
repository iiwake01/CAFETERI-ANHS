import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class AllWidget extends BaseWidget {
  const AllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("All")),
      color: Colors.pink,
    );
  }
}