import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/sliver_app_bar_widget.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends BaseWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 70,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 70,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 70,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 70,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
