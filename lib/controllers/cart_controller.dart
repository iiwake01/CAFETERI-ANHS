import 'package:cafeterianhs/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'base_controller.dart';
import 'package:get/get.dart';

class CartController extends BaseController {
  CartController() {
    debugPrint("CartController Constructor");
  }

  final RxList<ShopModel> _cartList = new List<ShopModel>.empty().obs;
  RxDouble subtotal = 0.00.obs;

  @override
  void onInit() {
    debugPrint("CartController onInit");
    _cartList.value = Get.arguments;
    _cartList.value.removeWhere((model) => model.isCart != null && model.isCart == false);
    debugPrint("CartController ${_cartList}");
    super.onInit();
  }
  //#region Cart Methods
  String getCartImage(int index,) {
    return _cartList.value
            .toList()[index]
            .image ?? "Nil";
  }

  String getCartName(int index,) {
    return _cartList.value
            .toList()[index]
            .name ?? "Nil";
  }

  String getCartPrice(int index,) {
    return "₱ ${_cartList.value[index].price.toString() ?? "Nil"}";
  }

  String getQuantity(int index,) {
    return _cartList.value
            .toList()[index]
            .quanity
            .toString() ?? "0";
  }

  void incrementQuanity(int index,) {
    debugPrint("CartController increamentQuanity($index)");
    final ShopModel _model = _cartList.value[index];
    _model.quanity = _model.quanity! + 1;
    _cartList[index] = _model;
  }

  void decrementQuantity(int index,) {
    debugPrint("CartController decrementQuantity($index)");
    final ShopModel _model = _cartList.value[index];
    if (_model.quanity! > 0) {
      _model.quanity = _model.quanity! - 1;
      _cartList[index] = _model;
    } else {
      Get.snackbar('Error', 'Quantity cannot be less than 0',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void updateSubtotal() {
    debugPrint("CartController updateSubtotal()");
    subtotal(0.00);
    _cartList.value.forEach((eachModel) {
      if (eachModel.quanity! > 0) {
        subtotal(subtotal.value! + (eachModel.quanity! * eachModel.price!));
      }
    });
  }

  String getSubtotal() {
    debugPrint("CartController getSubtotal()");    
    return subtotal.value.toString();
  }

  int getCartLength() {
    return _cartList.value.length ?? 0;
  }
  //#endregion
  @override
  void onClose() {
    debugPrint("CartController onClose");
    super.onClose();
  }
}