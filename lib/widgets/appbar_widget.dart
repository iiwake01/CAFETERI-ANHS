import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/app_bar_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/home_app_bar_widget.dart';
import 'package:cafeterianhs/widgets/shop_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarWidget extends BaseWidget<MainController> with PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    //required this.appbar,
    //required this.height,
  });

  //final AppBarEnum appbar;
  //final Size height;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.getAppBarEnum() == AppBarEnum.home ||
            controller.getAppBarEnum() == AppBarEnum.profile)
          return PreferredSize(
              preferredSize: preferredSize, child: HomeAppBarWidget());
        else if (controller.getAppBarEnum() == AppBarEnum.shop)
          return PreferredSize(
              preferredSize: preferredSize, child: const ShopAppBarWidget());
        else
          return const SizedBox();
      },
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(125); //controller.getPreferredSize();
  }
}
