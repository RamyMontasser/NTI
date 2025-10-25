import 'package:flutter/material.dart';

PreferredSizeWidget homeAppBar({required String title, required bool haveIcon}) {
  return  AppBar(
    title: Text(title),
    centerTitle: true,
    actions: haveIcon? [
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 35,
          height: 35,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 200, 233, 214),
          ),
          child: Image.asset(
            'assets/images/notification.png',
            width: 5,
            height: 5,
          ),
        ),
      ),
    ]:[],
  );
}
