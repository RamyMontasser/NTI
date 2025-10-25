import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class SeperatorRow extends StatelessWidget {
  const SeperatorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:AlignmentDirectional.center,
      children: [
        Container(
          height: 1,
          color: customColor['darkgrey'],
        ),
        Text(
          'أو', 
          style: TextStyle(
            backgroundColor: customColor['white'],
            fontSize: 20,
        ),
        )
      ],
    );
  }
}


