import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class BuildProducts extends StatelessWidget {
  const BuildProducts({super.key, required this.img, required this.title});
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell
        (
          child: Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(9),
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: customColor['grey'],
            ),
            child: Image.asset(
              img,
              // 'assets/images/watermellon.png',
              width: 5,
              height: 5,
            ),
          ),
        ),

        SizedBox(height: 5),

        Text(
          title,
          // 'بطيخ',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
