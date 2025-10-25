import 'package:flutter/material.dart';

 PreferredSizeWidget appBar({required String title}){
    return  AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
        // ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      );
  }
