import 'package:cafeterianhs/controllers/main_controller.dart';
import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends BaseWidget<MainController> {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.getTabController(),
      children: [
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: 8,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent,
                ),
              );
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        'https://cdn.shopify.com/s/files/1/0280/7126/4308/products/cokecan_1079x.png?v=1586878773',
                        height: 180,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        'https://storage.googleapis.com/aigensstoretest.appspot.com/SHXFfvGnCYtPEQpuZNWGBg.jpg',
                        height: 180,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        'https://ipcdn.freshop.com/resize?url=https://images.freshop.com/1564405684711722806/ddb89c9c74208ec13bd1918c40da1730_large.png&width=512&type=webp&quality=90',
                        height: 180,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                mainAxisExtent: 250),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg',
                        height: 180,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
