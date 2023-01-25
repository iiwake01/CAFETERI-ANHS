import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/views/base_view.dart';
import 'package:cafeterianhs/widgets/main_appbar_widget.dart';
import 'package:cafeterianhs/widgets/bottom_navigation_bar_widget.dart';
import 'package:cafeterianhs/widgets/main_floating_action_button_widget.dart';
import 'package:cafeterianhs/widgets/main_body_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends BaseView<MainController> {
  
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MainPage build");
    return const Scaffold(
      appBar: MainAppbarWidget(),
      floatingActionButton: MainFloatingActionButtonWidget(),
      body: MainBodyWidget(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}