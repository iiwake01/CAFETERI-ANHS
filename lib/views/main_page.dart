import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/views/base_view.dart';
import 'package:cafeterianhs/widgets/appbar_widget.dart';
import 'package:cafeterianhs/widgets/bottom_navigation_bar_widget.dart';
import 'package:cafeterianhs/widgets/cart_widget.dart';
import 'package:cafeterianhs/widgets/floating_action_button_widget.dart';
import 'package:cafeterianhs/widgets/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MainPage extends BaseView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  get shouldShow => null;

  @override
  Widget build(BuildContext context) {
    debugPrint("MainPage build");
    return Scaffold(
      appBar: const AppbarWidget(),
      floatingActionButton: Obx(() {
        if (controller.getBottomIndex() == 1) {
          return FloatingActionButtonWidget(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return CartWidget();
                  },
                ),
              );
            },
          );
        } else if (controller.getBottomIndex() == 2) {
          return FloatingActionButtonWidget(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return CartWidget();
                  },
                ),
              );
            },
          );
        } else {
          return Opacity(opacity: 0);
        }
      }),
      body: const MainWidget(),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
