import 'package:flutter/material.dart';

class GoogleRegisteratiion extends StatelessWidget {
  const GoogleRegisteratiion({super.key});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: Color.fromRGBO(230, 233, 234, 1),
                ),
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              fixedSize: Size(360, 50),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/google_image.png',
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 50),
                Text(
                  'تسجيل بواسطة جوجل',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
  }
}