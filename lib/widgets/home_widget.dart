import 'dart:developer';

import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/sliver_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverToBoxAdapter(
            child: ClipRRect(
                child: Container(
              height: 10,
              color: Colors.white,
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                'Popular items.\n',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
            children: [
              Container(
                child: Center(
                  child: Text('Food 1'),
                ),
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/cafeteria.jpg'))),
              ),
              Container(
                child: Center(
                  child: Text('Food 2'),
                ),
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
              Container(
                child: Center(
                  child: Text('Food 3'),
                ),
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                child: Center(
                  child: Text('Food 4'),
                ),
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
