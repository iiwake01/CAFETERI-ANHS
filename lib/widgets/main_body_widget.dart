import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/bottom_bar_enum.dart';
import 'package:cafeterianhs/widgets/home_widget.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/likes_widget.dart';
import 'package:cafeterianhs/widgets/profiles_widget.dart';
import 'package:cafeterianhs/widgets/tab_bar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBodyWidget extends BaseWidget<MainController> {

  const MainBodyWidget( { super.key } );

  @override
  Widget build(BuildContext context) {
    return Obx( () {
      if (controller.getBottomIndex() == BottomBarEnum.home.code)
        return const HomeWidget();
      else if (controller.getBottomIndex() == BottomBarEnum.shop.code)
        return const TabBarViewWidget();
      else if (controller.getBottomIndex() == BottomBarEnum.likes.code)
        return const LikesWidget();
      else if (controller.getBottomIndex() == BottomBarEnum.profile.code)
        return const ProfileWidget();
      else
        return const Center(
          child: CircularProgressIndicator(),
        );
    },);
  }
}