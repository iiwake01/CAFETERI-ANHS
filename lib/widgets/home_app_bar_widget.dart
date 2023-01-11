import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends BaseWidget {
  HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 130,
      backgroundColor: Colors.white,
      title: Center(
        child: Image.asset(
          'assets/cafeteria.png',
          height: 200,
          width: 200,
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.red],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
      elevation: 0,
      titleSpacing: 0,
    );
  }
}
