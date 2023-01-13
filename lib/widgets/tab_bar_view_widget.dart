import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends BaseWidget<MainController> {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.getTabController(),
      children: [
        Center(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                child: Center(
                  child: Text('Food $index'),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              );
            },
          ),
        ),
        Center(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                child: Center(
                  child: Text('Food $index'),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              );
            },
          ),
        ),
        Center(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                child: Center(
                  child: Text('Food $index'),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              );
            },
          ),
        ),
        Center(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                child: Center(
                  child: Text('Food $index'),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              );
            },
          ),
        ),
        Center(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                child: Center(
                  child: Text('Food $index'),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
