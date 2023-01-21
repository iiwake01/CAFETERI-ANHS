import 'package:flutter/material.dart';

import '../controllers/main_controller.dart';
import 'base_widgets.dart';

class CartWidget extends BaseWidget<MainController> {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-out'),
        centerTitle: true,
      ),
    );
  }
}
