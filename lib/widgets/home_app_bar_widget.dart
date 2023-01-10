import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends BaseWidget {
  
  HomeAppBarWidget({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('CAFTERI-ANHS'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.shopping_bag_rounded),
        ],
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