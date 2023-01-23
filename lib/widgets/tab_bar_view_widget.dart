import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/card_view_widget.dart';
import 'package:cafeterianhs/widgets/sliver_grid_delegate_with_fixed_cross_axis_count_widget.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends BaseWidget<MainController> {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.getTabController(),
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
          itemCount: controller.getShopLength(ShopCategoryEnum.all),
          itemBuilder: (build, index) {
            return CardViewWidget(
              image: controller.getShopImage(index, ShopCategoryEnum.all),
              name: controller.getShopName(index, ShopCategoryEnum.all),
              price: controller.getShopPrice(index, ShopCategoryEnum.all),
              onPressedLikes: () {
                controller.setLikes(index, ShopCategoryEnum.all);
              },
              onPressedCart: () {
                controller.setCart(index, ShopCategoryEnum.all);
              },
            );
          },
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
          itemCount: controller.getShopLength(ShopCategoryEnum.drink),
          itemBuilder: (build, index) {
            return CardViewWidget(
              image: controller.getShopImage(index, ShopCategoryEnum.drink),
              name: controller.getShopName(index, ShopCategoryEnum.drink),
              price: controller.getShopPrice(index, ShopCategoryEnum.drink),
              onPressedLikes: () {
                controller.setLikes(index, ShopCategoryEnum.drink);
              },
              onPressedCart: () {
                controller.setCart(index, ShopCategoryEnum.drink);
              },
            );
          },
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
          itemCount: controller.getShopLength(ShopCategoryEnum.meal),
          itemBuilder: (build, index) {
            return CardViewWidget(
              image: controller.getShopImage(index, ShopCategoryEnum.meal),
              name: controller.getShopName(index, ShopCategoryEnum.meal),
              price: controller.getShopPrice(index, ShopCategoryEnum.meal),
              onPressedLikes: () {
                controller.setLikes(index, ShopCategoryEnum.meal);
              },
              onPressedCart: () {
                controller.setCart(index, ShopCategoryEnum.meal);
              },
            );
          },
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
          itemCount: controller.getShopLength(ShopCategoryEnum.snacks),
          itemBuilder: (build, index) {
            return CardViewWidget(
              image: controller.getShopImage(index, ShopCategoryEnum.snacks),
              name: controller.getShopName(index, ShopCategoryEnum.snacks),
              price: controller.getShopPrice(index, ShopCategoryEnum.snacks),
              onPressedLikes: () {
                controller.setLikes(index, ShopCategoryEnum.snacks);
              },
              onPressedCart: () {
                controller.setCart(index, ShopCategoryEnum.snacks);
              },
            );
          },
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
          itemCount: controller.getShopLength(ShopCategoryEnum.dessert),
          itemBuilder: (build, index) {
            return CardViewWidget(
              image: controller.getShopImage(index, ShopCategoryEnum.dessert),
              name: controller.getShopName(index, ShopCategoryEnum.dessert),
              price: controller.getShopPrice(index, ShopCategoryEnum.dessert),
              onPressedLikes: () {
                controller.setLikes(index, ShopCategoryEnum.dessert);
              },
              onPressedCart: () {
                controller.setCart(index, ShopCategoryEnum.dessert);
              },
            );
          },
        ),
      ],
    );
  }
}
