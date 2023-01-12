import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends BaseWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 4,
      pinned: false,
      backgroundColor: Colors.deepPurple,
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Image.asset(
          'assets/cafeteria.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
