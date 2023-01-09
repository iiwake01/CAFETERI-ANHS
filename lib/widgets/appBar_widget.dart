import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends BaseWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
              Spacer(),
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              )
            ],
          ),
        ],
      ),
      actions: [
        Icon(Icons.shopping_bag_rounded),
      ],
    );
  }
}
