import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class MainController extends BaseController with GetSingleTickerProviderStateMixin{

  MainController() {
    debugPrint("MainController Constructor");
  }

  final RxInt _currentIndex = 0.obs;
  final RxBool _isShowedTabBarView = false.obs;
  late TabController _tabController;

  @override
  void onInit() {
    debugPrint("MainController onInit");
    super.onInit();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      debugPrint("TabController ${_tabController.index}");
      showTabBarView();
    });
  }

  TabController getTabController() {
    return _tabController;
  }

  void showTabBarView() {
    _isShowedTabBarView(true);
  }

  void hideTabBarView() {
    _isShowedTabBarView(false);
  }

  bool isShowedTabBarView() {
    return _isShowedTabBarView.value;
  }

  void setIndex(int index) {
    debugPrint("MainController setIndex($index)");
    _currentIndex(index);
  }

  int getIndex() {
    debugPrint("MainController getIndex(${_currentIndex.value})");
    return _currentIndex.value;
  }

  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }
}