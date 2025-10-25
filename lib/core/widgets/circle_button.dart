import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.width,
    required this.height,
    required this.content,
    required this.contentColor,
    required this.backgraundColor,
  });
  final double width;
  final double height;
  final String content;
  final Color? contentColor;
  final Color? backgraundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(

        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgraundColor,
        ),
        child: Center(
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 27, color: contentColor,height: 1),
          ),
        ),
      ),
    );
  }
}
