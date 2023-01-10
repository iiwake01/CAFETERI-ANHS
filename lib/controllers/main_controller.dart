import 'package:cafeterianhs/utils/app_bar_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class MainController extends BaseController with GetSingleTickerProviderStateMixin {

  MainController() {
    debugPrint("MainController Constructor");
  }

  final Rx<AppBarEnum> _appbar = AppBarEnum.home.obs;
  final RxInt _currentBottomIndex = 0.obs;
  final RxDouble _preferredSize = 120.00.obs;
  late TabController _tabController;

  @override
  void onInit() {
    debugPrint("MainController onInit");
    super.onInit();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      debugPrint("TabController ${_tabController.index}");
      _currentBottomIndex(1);
    } );
  }

  void setAppBarEnum(int index) { debugPrint("MainController setAppBarEnum(${index})");
    if (index == 0) _appbar(AppBarEnum.home);
    else if (index == 1) _appbar(AppBarEnum.shop);
    else if (index == 3) _appbar(AppBarEnum.profile);
    else _appbar(AppBarEnum.none);

    if (index == 1) _preferredSize(120.00);
    else _preferredSize(0.00);
  }

  AppBarEnum getAppBarEnum() { 
    debugPrint("MainController getAppBarEnum(${_appbar.value})");
    return _appbar.value;
  }

  Size getPreferredSize() { debugPrint("MainController getPreferredSize(${_preferredSize.value}})");
    return Size.fromHeight(_preferredSize.value); //TODO: Research SliverAppBar for this Issue
  }

  TabController getTabController() { 
    debugPrint("MainController getTabController($_tabController)");
    return _tabController;
  }

  void setTabIndex(int index) {
    debugPrint("MainController setTabIndex($index)");
    if (index == 1) _tabController.index = 0;
  }

  void setBottomIndex(int index) {
    debugPrint("MainController setBottomIndex($index)");
    _currentBottomIndex(index);
  }

  int getBottomIndex() {
    debugPrint("MainController getBottomIndex(${_currentBottomIndex.value})");
    return _currentBottomIndex.value;
  }

  @override
  void onClose() {
    _appbar(AppBarEnum.none);
    _tabController.dispose();
    _currentBottomIndex(0);
    super.onClose();
  }
}