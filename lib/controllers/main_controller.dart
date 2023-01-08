import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class MainController extends BaseController {

  MainController() { 
    debugPrint("MainController Constructor");
  }

  final RxInt _currentIndex = 0.obs;

  @override
  void onInit() { debugPrint("MainController onInit");
    super.onInit();
  }

  void setIndex(int index) { debugPrint("MainController setIndex($index)");
    _currentIndex(index);
  }

  int getIndex() { debugPrint("MainController getIndex(${_currentIndex.value})");
    return _currentIndex.value;
  }

  @override
  void onClose() {
    super.onClose();
  }
}