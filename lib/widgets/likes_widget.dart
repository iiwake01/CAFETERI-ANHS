import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class LikesWidget extends BaseWidget {
  const LikesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          expandedHeight: 100,
          backgroundColor: Colors.deepPurple[300],
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Likes'),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrange[300],
              ),
              child: Text('Likes $index'),
            );
          }, childCount: 5),
        )
      ],
    );
  }
}