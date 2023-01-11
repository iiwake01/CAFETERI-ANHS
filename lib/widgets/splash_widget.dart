import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class SplashWidget extends BaseWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/cafeterianhs.webp',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
