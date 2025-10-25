import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class Slidingpoints extends StatelessWidget {
  const Slidingpoints({super.key, required this.pagenum});
  final int pagenum;

  @override
  Widget build(BuildContext context) {
    if (pagenum == 1) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: customColor['darkGreen'],
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: customColor['darkGreen'],
                borderRadius: BorderRadius.circular(100)
              ),
            )
          ],
        );
      
    } 
    else{
      return 
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: customColor['softGreen'],
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: customColor['darkGreen'],
                borderRadius: BorderRadius.circular(100)
              ),
            )
          ],
        );
    }
  }
}
