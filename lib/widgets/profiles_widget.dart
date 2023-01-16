import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/sliver_app_bar_widget.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends BaseWidget {
  
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBarWidget(),
        const SliverToBoxAdapter(
          child: Center(
            child: Text(
              'Profiles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
        SliverToBoxAdapter(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  child: Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple[300],
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 35, right: 35, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Center(
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 35, right: 35, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Center(
                  child: Text(
                    'Privacy & Security',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 35, right: 35, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Center(
                  child: Text(
                    'Help and Support',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 35, right: 35, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Center(
                  child: Text(
                    'Log-out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}