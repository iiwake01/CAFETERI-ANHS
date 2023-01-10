import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/home_page_widget.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/likes_widget.dart';
import 'package:cafeterianhs/widgets/profiles_widget.dart';
import 'package:cafeterianhs/widgets/tab_bar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWidget extends BaseWidget<MainController> {
  
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx( () {
      if (controller.getBottomIndex() == 0)  return const HomeWidget();
      else if (controller.getBottomIndex() == 1)  return const TabBarViewWidget();
      else if (controller.getBottomIndex() == 2)  return const LikesWidget();
      else if (controller.getBottomIndex() == 3)  return const ProfileWidget();
      else return const Center(
        child: CircularProgressIndicator(),
      );
    }, );
  }
}