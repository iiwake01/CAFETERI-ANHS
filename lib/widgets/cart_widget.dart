import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';

import '../controllers/main_controller.dart';
import 'base_widgets.dart';

class CartWidget extends BaseWidget<MainController> {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-out'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Stack(
        children: [
          Positioned(
            top: 5,
            left: 20,
            right: 20,
            bottom: 0,
            child: Container(
              // color: Colors.red,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0280/7126/4308/products/cokecan_1079x.png?v=1586878773'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Coke',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'P32',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
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
                                        Icon(
                                          Icons.remove,
                                          color: Colors.grey[400],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('0'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Colors.grey[400],
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
              ),
            ),
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
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
                color: Colors.blue[300],
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
