import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

Widget buildAskingRow(BuildContext context,{required String quistion, required String action, required String route}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(quistion, style: TextStyle(fontSize: 16)),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Text(
          action,
          style: TextStyle(color: customColor['lightGreen'], fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
