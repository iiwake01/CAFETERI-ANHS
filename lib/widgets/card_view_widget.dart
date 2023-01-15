import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class CardViewWidget extends BaseWidget {

  const CardViewWidget({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.redAccent,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              image,
              height: 180,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}