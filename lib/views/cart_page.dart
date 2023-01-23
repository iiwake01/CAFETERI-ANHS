import 'package:cafeterianhs/controllers/cart_controller.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends BaseWidget<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-out'),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.orange[300],
      ),
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: Stack(
        children: [
          Positioned(
            top: 5,
            left: 20,
            right: 20,
            bottom: 0,
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.getCartLength(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 100,
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                controller.getCartImage(index),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: SizedBox(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                controller.getCartName(index),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.getCartPrice(index),
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            controller.decrementQuantity(index);
                                            controller.updateSubtotal();
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(controller.getQuantity(
                                          index,
                                        )),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            controller.incrementQuanity(index);
                                            controller.updateSubtotal();
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  );
                },
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Subtotal:',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Obx((() {
                    return Text(
                      controller.getSubtotal(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  })),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
                right: 20,
                left: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange[300],
              ),
              child: Text(
                'CHECKOUT',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
