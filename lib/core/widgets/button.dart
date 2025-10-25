import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key, required this.title, this.fun});
  final String title;
  final VoidCallback? fun;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fun,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: customColor['darkGreen'],
        foregroundColor: customColor['white'],
        fixedSize: Size(360, 50),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
