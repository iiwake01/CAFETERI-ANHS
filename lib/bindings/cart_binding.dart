import 'base_binding.dart';
import 'package:cafeterianhs/controllers/cart_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CartBinding extends BaseBinding {

  @override
  void dependencies() {
    debugPrint("CartBinding dependencies");
    Get.lazyPut<CartController> (
      () => CartController(

      )
    );
  }
}