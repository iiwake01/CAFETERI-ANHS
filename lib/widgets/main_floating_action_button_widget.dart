import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/bottom_bar_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/floating_action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFloatingActionButtonWidget extends BaseWidget<MainController> {
  const MainFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.getBottomIndex() == BottomBarEnum.shop.code ||
          controller.getBottomIndex() == BottomBarEnum.likes.code)
        return const FloatingActionButtonWidget();
      else
        return const Opacity(opacity: 0);
    });
  }
}
