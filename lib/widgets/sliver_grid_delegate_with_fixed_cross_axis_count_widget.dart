import 'package:flutter/material.dart';

class SliverGridDelegateWithFixedCrossAxisCountWidget
    extends SliverGridDelegateWithFixedCrossAxisCount {
  SliverGridDelegateWithFixedCrossAxisCountWidget({required})
      : super(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisExtent: 305,
          mainAxisSpacing: 12,
        );
}
