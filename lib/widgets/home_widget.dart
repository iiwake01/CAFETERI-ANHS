import 'dart:developer';

import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/sliver_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBarWidget(),

        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return Container(
        //         margin: EdgeInsets.all(10),
        //         height: 50,
        //         alignment: Alignment.center,
        //         color: Colors.deepPurple[100],
        //         child: Text('number $index'),
        //       );
        //     },
        //     childCount: 20,
        //   ),
        // ),

        SliverToBoxAdapter(
          child: ClipRRect(
              child: Container(
            height: 10,
            color: Colors.white,
          )),
        ),

        SliverToBoxAdapter(
          child: const Text(
            'Popular buys:',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: ClipRRect(
              child: Container(
            height: 10,
            color: Colors.white,
          )),
        ),

        SliverGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
          children: [
            Container(color: Colors.orange),
            Container(color: Colors.blue),
            Container(color: Colors.red),
            Container(color: Colors.green),
          ],
        )
      ],
    );
  }
}
