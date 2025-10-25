import 'package:flutter/material.dart';

 void customSnackBar({required BuildContext context , required String msg}){
   ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        behavior: SnackBarBehavior.floating,
        elevation: 10,
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
    ));
}