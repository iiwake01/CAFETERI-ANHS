import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class LikesWidget extends BaseWidget {
  const LikesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        //Appbar

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
      ],
    );
  }
}
