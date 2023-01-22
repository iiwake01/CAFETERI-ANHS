import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class CardViewWidget extends BaseWidget {
  const CardViewWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onPressedLikes,
    required this.onPressedCart,
  });

  final String image;
  final String name;
  final String price;
  final VoidCallback? onPressedLikes;
  final VoidCallback? onPressedCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.redAccent[100],
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  price,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: onPressedLikes,
                      icon: Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: onPressedCart,
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
