import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/utils/app_bar_enum.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/shop_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainAppbarWidget extends BaseWidget<MainController> with PreferredSizeWidget {
  
  const MainAppbarWidget( { super.key,} );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // if (controller.getAppBarEnum() == AppBarEnum.profile)
        //   return PreferredSize(
        //       preferredSize: preferredSize, child: HomeAppBarWidget());
        if (controller.getAppBarEnum() == AppBarEnum.shop)
          return PreferredSize(
              preferredSize: preferredSize, child: const ShopAppBarWidget());
        else
          return const SizedBox();
      },
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(125); //controller.getPreferredSize();
  }
}