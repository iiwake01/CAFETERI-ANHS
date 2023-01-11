import 'package:cafeterianhs/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 320,
            child: PageView.builder(
              itemCount: 4,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    'Food Pairing',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('assets/cafeteria.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.purple : Colors.blue,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/cafeteria.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Colors.blue : Colors.purple,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/cafeteria.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//  child: ListView.builder(Color.fromARGB(255, 57, 42, 59)temCount: 10,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             margin: EdgeInsets.all(4),
//             child: Row(
//               children: [
//                 Container(
//                   height: 120,
//                   width: 120,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.red,
//                       image: DecorationImage(
//                           image: AssetImage('assets/cafeteria.png'))),
//                 )
//               ],
//             ),
//           );
//         },
//       ),