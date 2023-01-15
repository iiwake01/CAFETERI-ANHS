import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/card_view_widget.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends BaseWidget<MainController> {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.getTabController(),
      children: [
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: controller.getShopLength(ShopCategoryEnum.all),
            itemBuilder: (_, index) {
              return CardViewWidget(image: controller.getShopImage(index, ShopCategoryEnum.all), name: controller.getShopName(index, ShopCategoryEnum.all),);
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: controller.getShopLength(ShopCategoryEnum.drink),
            itemBuilder: (_, index) {
              return CardViewWidget(image: controller.getShopImage(index, ShopCategoryEnum.drink), name: controller.getShopName(index, ShopCategoryEnum.drink),);
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: controller.getShopLength(ShopCategoryEnum.meal),
            itemBuilder: (_, index) {
              return CardViewWidget(image: controller.getShopImage(index, ShopCategoryEnum.meal), name: controller.getShopName(index, ShopCategoryEnum.meal),);
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: controller.getShopLength(ShopCategoryEnum.junk),
            itemBuilder: (_, index) {
              return CardViewWidget(image: controller.getShopImage(index, ShopCategoryEnum.junk), name: controller.getShopName(index, ShopCategoryEnum.junk),);
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: controller.getShopLength(ShopCategoryEnum.dessert),
            itemBuilder: (_, index) {
              return CardViewWidget(image: controller.getShopImage(index, ShopCategoryEnum.dessert), name: controller.getShopName(index, ShopCategoryEnum.dessert),);
            },
          ),
        ),
      ],
    );
  }
}
