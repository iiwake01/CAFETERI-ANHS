import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/shop_category_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/card_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LikesWidget extends BaseWidget<MainController> {
  const LikesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView (
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
            expandedHeight: 100,
            backgroundColor: Colors.deepPurple[300],
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Likes'),
            ),
          ),
          Obx( () {
            return SliverList(delegate: SliverChildBuilderDelegate ( childCount: controller.getFavoritesLength(),
                  (context, index) {
                  return CardViewWidget (
                      image: controller.getFavoritesImage(index),
                      name: controller.getFavoritesName(index),
                      price: controller.getFavoritesPrice(index),
                      onPressedLikes: () {
                        controller.setLikes(index, ShopCategoryEnum.all);
                      },
                    );     
                  }, ), 
                );
          }),
        ],
      );
  }
}