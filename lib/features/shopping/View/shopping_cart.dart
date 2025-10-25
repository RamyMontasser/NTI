import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/circle_button.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';
import 'package:flutter_application_1/core/widgets/home_appbar.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(title: 'السلة', haveIcon: false),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
            height: 40,
            color: Color(0xFFEBF9F1),
            child: Text(
              'لديك 3 منتجات في سلة التسوق',
              textAlign: TextAlign.center,
              style: TextStyle(color: customColor['darkGreen'], fontSize: 20),
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  color: customColor['grey'],
                  child: Image.asset('assets/images/watermellon.png'),
                ),

                SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('بطيخ'),
                    SizedBox(height: 5),
                    Text('3 كم'),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        CircleButton(
                          width: 30,
                          height: 30,
                          content: '+',
                          contentColor: customColor['white'],
                          backgraundColor: customColor['darkGreen'],
                        ),

                        SizedBox(width: 10,),

                        Text('3'),

                        SizedBox(width: 10,),

                        CircleButton(
                          width: 30,
                          height: 30,
                          content: '-',
                          contentColor: customColor['darkgrey'],
                          backgraundColor: customColor['grey'],
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
