import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:cafeterianhs/widgets/home_widget.dart';
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
            icon: Icon(Icons.arrow_back_ios),
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Likes'),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              height: 50,
              alignment: Alignment.center,
              child: Text('Likes $index'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrange[300],
              ),
            );
          }, childCount: 5),
        )
      ],
    );
  }
}
