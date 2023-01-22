import 'package:cafeterianhs/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'base_controller.dart';
import 'package:get/get.dart';

class CartController extends BaseController {
  CartController() {
    debugPrint("CartController Constructor");
  }

  final RxList<ShopModel> _CartList = new List<ShopModel>.empty().obs;
  double? subtotal;

  @override
  void onInit() {
    debugPrint("CartController onInit");
    _CartList.value = Get.arguments;
    debugPrint("CartController ${_CartList}");
    super.onInit();
  }

  //#region Cart Methods
  String getCartImage(
    int index,
  ) {
    return _CartList.where((model) => model.isCart == true)
            .toList()[index]
            .image ??
        "Nil";
  }

  String getCartName(
    int index,
  ) {
    return _CartList.where((model) => model.isCart == true)
            .toList()[index]
            .name ??
        "Nil";
  }

  String getCartPrice(
    int index,
  ) {
    return "₱ ${_CartList.where((model) => model.isCart == true).toList()[index].price.toString() ?? "Nil"}";
  }

  String getQuantity(
    int index,
  ) {
    return _CartList.where((model) => model.isCart == true)
            .toList()[index]
            .quanity
            .toString() ??
        "0";
  }

  void incrementQuanity(
    int index,
  ) {
    debugPrint("CartController increamentQuanity($index)");
    //TODO: Increament by one at ShopModel quantity integer
    final ShopModel _model = _CartList.where((model) => model.isCart == true).toList()[index];
    _model.quanity = _model.quanity! + 1;
    _CartList.where((model) => model.isCart == true).toList()[index] = _model;
  }

  void decrementQuantity(
    int index,
  ) {
    debugPrint("CartController decrementQuantity($index)");
    //TODO: Decrement by one at ShopModel quantity integer
    final ShopModel _model = _CartList.where((model) => model.isCart == true).toList()[index];

    if (_model.quanity! > 0) {
      _model.quanity = _model.quanity! - 1;
      _CartList.where((model) => model.isCart == true).toList()[index] = _model;
    } else {
      Get.snackbar('Error', 'Quantity cannot be less than 0',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  String getSubtotal() {
    debugPrint("CartController getSubtotal()");
    //TODO: Add All Prices times Quantity
    subtotal = 0.00;
    _CartList.forEach((model) {
      debugPrint("CartController ${model.isCart}");
      if (model.isCart == true && model.quanity! > 0) {
        subtotal = subtotal! + (model.quanity! * model.price!);
      }
    });

    return '0';
  }

  int getCartLength() {
    return _CartList.where((model) => model.isCart == true).toList().length ??
        0;
  }

  //#endregion
  @override
  void onClose() {
    debugPrint("CartController onClose");
    super.onClose();
  }
}
