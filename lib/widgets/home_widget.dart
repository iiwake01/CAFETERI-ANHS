import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'C A F E T E R I - A N H S',
              ),
              background: Image.asset(
                'assets/cafeteria.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverAppBar(
            pinned: true,
            primary: false,
            elevation: 8,
            backgroundColor: Colors.deepPurple,
            title: Align(
              alignment: AlignmentDirectional.center,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.menu),
                    text: 'All',
                  ),
                  Tab(
                    icon: Icon(Icons.wine_bar),
                    text: 'Drinks',
                  ),
                  Tab(
                    icon: Icon(Icons.food_bank),
                    text: 'Meals ',
                  ),
                  Tab(
                    icon: Icon(Icons.fastfood),
                    text: 'Junkfoods',
                  ),
                  Tab(
                    icon: Icon(Icons.icecream),
                    text: 'Dessert',
                  ),
                ],
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
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
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
