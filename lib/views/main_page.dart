import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/views/base_view.dart';
import 'package:cafeterianhs/widgets/appBar_widget.dart';
import 'package:cafeterianhs/widgets/bottom_navigation_bar_widget.dart';
import 'package:cafeterianhs/widgets/main_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends BaseView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MainPage build");
    debugPrint("MainPage initialized ${controller.initialized}");
    debugPrint("MainPage isClosed ${controller.isClosed}");
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(),
      ),
      body: MainWidget(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}