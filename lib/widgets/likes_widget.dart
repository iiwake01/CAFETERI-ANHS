import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/card_view_widget.dart';
import 'package:cafeterianhs/widgets/sliver_grid_delegate_with_fixed_cross_axis_count_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LikesWidget extends BaseWidget<MainController> {
  const LikesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 70,
          backgroundColor: Colors.deepPurple[300],
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Favorites'),
          ),
        ),
        Obx(() {
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCountWidget(),
            delegate: SliverChildBuilderDelegate(
                childCount: controller.getFavoritesLength(), ((context, index) {
              return CardViewWidget(
                image: controller.getFavoritesImage(index),
                name: controller.getFavoritesName(index),
                price: controller.getFavoritesPrice(index),
                onPressedLikes: () {
                  controller.setLikes(index, ShopCategoryEnum.all);
                },
                onPressedCart: () {
                  controller.setCart(index, ShopCategoryEnum.all);
                },
              );
            })),
          );
        }),
      ],
    );
  }
}

// Obx(() {
//           return SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: controller.getFavoritesLength(),
//               (context, index) {
//                 return CardViewWidget(
//                   image: controller.getFavoritesImage(index),
//                   name: controller.getFavoritesName(index),
//                   price: controller.getFavoritesPrice(index),
//                   onPressedLikes: () {
//                     controller.setLikes(index, ShopCategoryEnum.all);
//                   },
//                 );
//               },
//             ),
//           );
//         }),
