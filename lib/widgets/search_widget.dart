import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class SearchWidget extends BaseWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Search"),
      ),
      color: Colors.orange,
    );
  }
}
