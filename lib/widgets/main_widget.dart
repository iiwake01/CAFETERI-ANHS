import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/all_widget.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/notification_widget.dart';
import 'package:cafeterianhs/widgets/likes_widget.dart';
import 'package:cafeterianhs/widgets/profile_widget.dart';
//import 'package:cafeterianhs/widgets/search_widget.dart';
import 'package:cafeterianhs/widgets/shop_widget.dart';
import 'package:cafeterianhs/widgets/tab_bar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWidget extends BaseWidget<MainController> {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx( () {
      if (controller.isShowedTabBarView()) return TabBarViewWidget();
      else if (controller.getIndex() == 0) return const AllWidget();
      else if (controller.getIndex() == 1) return const ShopWidget();
      else if (controller.getIndex() == 2) return const NotificationWidget();
      else if (controller.getIndex() == 3) return const LikesWidget();
      else if (controller.getIndex() == 4) return const ProfileWidget();
      else return const Center(child: CircularProgressIndicator());
    }, );
  }
}