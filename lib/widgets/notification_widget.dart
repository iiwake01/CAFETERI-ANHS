import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends BaseWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Notification")),
      color: Colors.blue,
    );
  }
}