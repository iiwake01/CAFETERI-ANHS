import 'package:flutter/material.dart';

class SliverGridDelegateWithFixedCrossAxisCountWidget
    extends SliverGridDelegateWithFixedCrossAxisCount {
  SliverGridDelegateWithFixedCrossAxisCountWidget()
      : super(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisExtent: 296,
          mainAxisSpacing: 12,
        );
}
