import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class ForgetpassQ extends StatelessWidget {
  const ForgetpassQ({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('forgetpass');
            },
            child: Text(
              'نسيت كلمة المرور؟',
              style: TextStyle(
                fontSize: 17,
                color: customColor['lightGreen'],
              ),
            ),
          );
  }
}