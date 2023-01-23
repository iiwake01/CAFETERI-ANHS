import 'dart:async';
import 'package:cafeterianhs/models/shop_model.dart';
import 'package:cafeterianhs/routes/app_pages.dart';
import 'package:cafeterianhs/utils/app_bar_enum.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class MainController extends BaseController
    with GetSingleTickerProviderStateMixin {
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
    });
  }

  void setAppBarEnum(int index) {
    debugPrint("MainController setAppBarEnum(${index})");
    if (index == 0)
      _appbar(AppBarEnum.home);
    else if (index == 1)
      _appbar(AppBarEnum.shop);
    else if (index == 3)
      _appbar(AppBarEnum.profile);
    else
      _appbar(AppBarEnum.none);

    if (index == 1)
      _preferredSize(120.00);
    else
      _preferredSize(0.00);
  }

  AppBarEnum getAppBarEnum() {
    debugPrint("MainController getAppBarEnum(${_appbar.value})");
    return _appbar.value;
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
    _shopList.add(ShopModel(
      id: 1,
      image: 'assets/pineapplejuice.jpg',
      name: 'Pineapple Juice',
      category: ShopCategoryEnum.drink,
      price: 15,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 2,
      image: 'assets/icedcoffee.webp',
      name: 'Iced Coffee',
      category: ShopCategoryEnum.drink,
      price: 39,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 3,
      image: 'assets/siomairice.jpg',
      name: 'Siomai Rice',
      category: ShopCategoryEnum.meal,
      price: 20,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 4,
      image: 'assets/ricewithham.png',
      name: 'Rice with Ham & Egg',
      category: ShopCategoryEnum.meal,
      price: 20,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 5,
      image: 'assets/siopao.jpeg',
      name: 'Siopao',
      category: ShopCategoryEnum.snacks,
      price: 20,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 6,
      image: 'assets/hotdogroll.jpg',
      name: 'Hotdog Roll',
      category: ShopCategoryEnum.snacks,
      price: 15,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 7,
      image: 'assets/halohalo.jpg',
      name: 'Halo-Halo',
      category: ShopCategoryEnum.dessert,
      price: 20,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 8,
      image: 'assets/cookies.jpg',
      name: 'Cookies',
      category: ShopCategoryEnum.dessert,
      price: 16,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
  }

  void refreshList() {
    debugPrint("MainController refreshList()");
    setBottomIndex(-1);
    final Timer _timer = Timer(const Duration(milliseconds: 500), (() {
      setBottomIndex(2);
    }));
  }

  //#region Shop Methods
  String getShopImage(int index, ShopCategoryEnum category) {
    return _shopList.value
            .where((model) =>
                (category == ShopCategoryEnum.all) ||
                (category != ShopCategoryEnum.all &&
                    model.category == category))
            .toList()[index]
            .image ?? "Nil";
  }

  String getShopName(int index, ShopCategoryEnum category) {
    return _shopList.value
            .where((model) =>
                (category == ShopCategoryEnum.all) ||
                (category != ShopCategoryEnum.all &&
                    model.category == category))
            .toList()[index]
            .name ??
        "Nil";
  }

  String getShopPrice(int index, ShopCategoryEnum category) {
    return "₱${_shopList.where((model) => (category == ShopCategoryEnum.all) || (category != ShopCategoryEnum.all && model.category == category)).toList()[index].price.toString() ?? "Nil"}";
  }

  int getShopLength(ShopCategoryEnum category) {
    return _shopList.value
            .where((model) =>
                (category == ShopCategoryEnum.all) ||
                (category != ShopCategoryEnum.all &&
                    model.category == category))
            .toList()
            .length ??
        0;
  }
  //#endregion
  //#region Likes Methods
  void setUnLike(
    int index,
  ) {
    debugPrint("MainController setUnLike($index,)");
    final ShopModel _model =
        _shopList.value.where((model) => model.isLikes == true).toList()[index];
    _model.isLikes = false;
    _shopList.value
        .where((model) => model.id == _model.id)
        .forEach((eachModel) => eachModel.isLikes = _model.isLikes ?? false);
  }

  void setLikes(int index, ShopCategoryEnum category) {
    debugPrint("MainController setLikes($index, $category)");
    final ShopModel _model = _shopList.value
        .where((model) =>
            (category == ShopCategoryEnum.all) ||
            (category != ShopCategoryEnum.all && model.category == category))
        .toList()[index];
    _model.isLikes == true ? _model.isLikes = false : _model.isLikes = true;
    _shopList.value
        .where((model) =>
            (category == ShopCategoryEnum.all) ||
            (category != ShopCategoryEnum.all && model.category == category))
        .toList()[index] = _model;
  }

  String getLikesImage(int index) {
    return _shopList.value
            .where((model) => model.isLikes == true)
            .toList()[index]
            .image ??
        "Nil";
  }

  String getLikesName(int index) {
    return _shopList.value
            .where((model) => model.isLikes == true)
            .toList()[index]
            .name ??
        "Nil";
  }

  String getLikesPrice(int index) {
    return _shopList.value
            .where((model) => model.isLikes == true)
            .toList()[index]
            .price
            .toString() ??
        "Nil";
  }

  int getLikesLength() {
    return _shopList.value
            .where((model) => model.isLikes == true)
            .toList()
            .length ??
        0;
  }

  //#endregion
  //#region Cart Methods
  void setCart(int index, ShopCategoryEnum category) {
    debugPrint("MainController setCart($index, $category)");
    final ShopModel _model = _shopList.value
        .where((model) =>
            (category == ShopCategoryEnum.all) ||
            (category != ShopCategoryEnum.all))
        .toList()[index];
    _model.isCart == true ? _model.isCart = false : _model.isCart = true;
  }

  void launchCart() {
    debugPrint("MainController launchCart()");
    Get.toNamed(Routes.CART, arguments: _shopList);
  }

  void setLikeCart(int index) {
    debugPrint("MainController setCart($index,)");
    final ShopModel _model =
        _shopList.where((model) => model.isLikes == true).toList()[index];
    _model.isCart == true ? _model.isCart = false : _model.isCart = true;
  }
  //#endregion
  @override
  void onClose() {
    debugPrint("MainController onClose()");
    _appbar(AppBarEnum.none);
    _tabController.dispose();
    _currentBottomIndex(0);
    super.onClose();
  }
}