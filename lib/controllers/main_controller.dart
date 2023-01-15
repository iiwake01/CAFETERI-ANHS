import 'package:cafeterianhs/models/shop_model.dart';
import 'package:cafeterianhs/utils/app_bar_enum.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:flutter/foundation.dart';
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
  final RxList<ShopModel> _shopList = new List<ShopModel>.empty().obs;

  @override
  void onInit() {
    debugPrint("MainController onInit");
    super.onInit();
    _setShopList();
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

  void _setShopList() {
    _shopList.value = <ShopModel>[];
    _shopList.add( ShopModel( id: null, image: 'https://cdn.shopify.com/s/files/1/0280/7126/4308/products/cokecan_1079x.png?v=1586878773', name: null, ) );
    _shopList.add( ShopModel( id: null, image: 'https://storage.googleapis.com/aigensstoretest.appspot.com/SHXFfvGnCYtPEQpuZNWGBg.jpg', name: null, ) );
    _shopList.add( ShopModel( id: null, image: 'https://ipcdn.freshop.com/resize?url=https://images.freshop.com/1564405684711722806/ddb89c9c74208ec13bd1918c40da1730_large.png&width=512&type=webp&quality=90', name: null, ) );
    _shopList.add( ShopModel( id: null, image: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg', name: null, ) );
  }

  String getShopImage(int index, ShopCategoryEnum category) {
    return _shopList.value[index].image ?? "Nil";
  }

  String getShopName(int index, ShopCategoryEnum category) {
    return _shopList.value[index].name ?? "Nil";
  }

  int getShopLength(ShopCategoryEnum category) {
    return _shopList.value.length ?? 0;
  }

  @override
  void onClose() {
    _appbar(AppBarEnum.none);
    _tabController.dispose();
    _currentBottomIndex(0);
    super.onClose();
  }
}