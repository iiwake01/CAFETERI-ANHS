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
      image:
          'https://cdn.shopify.com/s/files/1/0280/7126/4308/products/cokecan_1079x.png?v=1586878773',
      name: 'Coke',
      category: ShopCategoryEnum.drink,
      price: 32,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 2,
      image:
          'https://www.acs.org/content/acs/en/pressroom/presspacs/2015/acs-presspac-january-21-2015/oranges-versus-orange-juice-which-one-might-be-better-for-your-health/_jcr_content/pressPacContent/columnsbootstrap/column1/image.img.jpg/1421826829406.jpg',
      name: 'Orange Juice',
      category: ShopCategoryEnum.drink,
      price: 10,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 3,
      image:
          'https://storage.googleapis.com/aigensstoretest.appspot.com/SHXFfvGnCYtPEQpuZNWGBg.jpg',
      name: 'Inasal',
      category: ShopCategoryEnum.meal,
      price: 75,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 4,
      image:
          'https://panlasangpinoy.com/wp-content/uploads/2016/09/Ginataang-Gulay-500x485.jpg',
      name: 'Ginataang Gulay',
      category: ShopCategoryEnum.meal,
      price: 25,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 5,
      image:
          'https://ipcdn.freshop.com/resize?url=https://images.freshop.com/1564405684711722806/ddb89c9c74208ec13bd1918c40da1730_large.png&width=512&type=webp&quality=90',
      name: 'Chips',
      category: ShopCategoryEnum.junk,
      price: 15,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 6,
      image:
          'https://images.freshop.com/8195234/a8433dd5f5a47ff02addadf50b30b6a0_large.png',
      name: 'Piatos',
      category: ShopCategoryEnum.junk,
      price: 35,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 7,
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg',
      name: 'Ice Cream',
      category: ShopCategoryEnum.dessert,
      price: 25,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
    _shopList.add(ShopModel(
      id: 8,
      image:
          'https://shop.gerald.ph/content/images/thumbs/0031536_magnum-almond-pint_340.png',
      name: 'Magnum',
      category: ShopCategoryEnum.dessert,
      price: 200,
      isLikes: false,
      isCart: false,
      quanity: 0,
    ));
  }

  void refreshList() {
    debugPrint("MainController refreshList()");
    setBottomIndex(-1);
    final Timer _timer = Timer(const Duration(milliseconds: 750), (() {
      setBottomIndex(2);
    }));
  }

  //#region Shop Methods
  String getShopImage(int index, ShopCategoryEnum category) {
    return _shopList
            .where((model) =>
                (category == ShopCategoryEnum.all) ||
                (category != ShopCategoryEnum.all &&
                    model.category == category))
            .toList()[index]
            .image ??
        "Nil";
  }

  String getShopName(int index, ShopCategoryEnum category) {
    return _shopList
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
    return _shopList
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
    final ShopModel _model = _shopList
        .where((model) =>
            (category == ShopCategoryEnum.all) ||
            (category != ShopCategoryEnum.all && model.category == category))
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
