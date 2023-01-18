import 'package:cafeterianhs/models/shop_model.dart';
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

  Size getPreferredSize() {
    debugPrint("MainController getPreferredSize(${_preferredSize.value}})");
    return Size.fromHeight(
        _preferredSize.value); //TODO: Research SliverAppBar for this Issue
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
      price: 'P32',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 2,
      image:
          'https://www.acs.org/content/acs/en/pressroom/presspacs/2015/acs-presspac-january-21-2015/oranges-versus-orange-juice-which-one-might-be-better-for-your-health/_jcr_content/pressPacContent/columnsbootstrap/column1/image.img.jpg/1421826829406.jpg',
      name: 'Orange Juice',
      category: ShopCategoryEnum.drink,
      price: 'P10',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 3,
      image:
          'https://storage.googleapis.com/aigensstoretest.appspot.com/SHXFfvGnCYtPEQpuZNWGBg.jpg',
      name: 'Inasal',
      category: ShopCategoryEnum.meal,
      price: 'P75',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 4,
      image:
          'https://panlasangpinoy.com/wp-content/uploads/2016/09/Ginataang-Gulay-500x485.jpg',
      name: 'Ginataang Gulay',
      category: ShopCategoryEnum.meal,
      price: 'P25',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 5,
      image:
          'https://ipcdn.freshop.com/resize?url=https://images.freshop.com/1564405684711722806/ddb89c9c74208ec13bd1918c40da1730_large.png&width=512&type=webp&quality=90',
      name: 'Chips',
      category: ShopCategoryEnum.junk,
      price: 'P15',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 6,
      image:
          'https://images.freshop.com/8195234/a8433dd5f5a47ff02addadf50b30b6a0_large.png',
      name: 'Piatos',
      category: ShopCategoryEnum.junk,
      price: 'P35',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 7,
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg',
      name: 'Ice Cream',
      category: ShopCategoryEnum.dessert,
      price: 'P25',
      isLikes: false,
    ));
    _shopList.add(ShopModel(
      id: 8,
      image:
          'https://shop.gerald.ph/content/images/thumbs/0031536_magnum-almond-pint_340.png',
      name: 'Magnum',
      category: ShopCategoryEnum.dessert,
      price: 'P200',
      isLikes: false,
    ));
  }
  //#region Shop Method
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
    return _shopList
            .where((model) =>
                (category == ShopCategoryEnum.all) ||
                (category != ShopCategoryEnum.all &&
                    model.category == category))
            .toList()[index]
            .price ??
        "Nil";
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
  //#region Favorites Method
  void setLikes(int index, ShopCategoryEnum category) {
    debugPrint("MainController setLikes($index, $category)");
    final ShopModel _model = _shopList
        .where((model) =>
            (category == ShopCategoryEnum.all) ||
            (category != ShopCategoryEnum.all && model.category == category))
        .toList()[index];
    _model.isLikes == true ? _model.isLikes = false : _model.isLikes = true;
    debugPrint("MainController _model ${_model.toString()}");
    _shopList[index] = _model;
    debugPrint("MainController _model ${_shopList.value.toString()}");
  }

  String getFavoritesImage(int index) {
    return _shopList
            .where((model) => model.isLikes == true)
            .toList()[index]
            .image ??
        "Nil";
  }

  String getFavoritesName(int index) {
    return _shopList
            .where((model) => model.isLikes == true)
            .toList()[index]
            .name ??
        "Nil";
  }

  String getFavoritesPrice(int index) {
    return _shopList
            .where((model) => model.isLikes == true)
            .toList()[index]
            .price ??
        "Nil";
  }

  int getFavoritesLength() {
    return _shopList.where((model) => model.isLikes == true).toList().length ??
        0;
  }

  //#endregion
  @override
  void onClose() {
    _appbar(AppBarEnum.none);
    _tabController.dispose();
    _currentBottomIndex(0);
    super.onClose();
  }
}