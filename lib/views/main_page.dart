import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/views/base_view.dart';
import 'package:cafeterianhs/widgets/main_appbar_widget.dart';
import 'package:cafeterianhs/widgets/bottom_navigation_bar_widget.dart';
import 'package:cafeterianhs/widgets/floating_action_button_widget.dart';
import 'package:cafeterianhs/widgets/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MainPage extends BaseView<MainController> {
  
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MainPage build");
    return Scaffold(
      appBar: const MainAppbarWidget(),
      floatingActionButton: Obx(() {
        if (controller.getBottomIndex() == 1 || controller.getBottomIndex() == 2) {
          return const FloatingActionButtonWidget();
        } else return const Opacity(opacity: 0);
      }),
      body: const MainWidget(),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}