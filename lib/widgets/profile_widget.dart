import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends BaseWidget {
  
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      child: Center(child:Text("Profile")),
      color: Colors.teal,
    );
  }
}