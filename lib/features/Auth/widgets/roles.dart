import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class Roles extends StatelessWidget {
  const Roles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              side: BorderSide(strokeAlign: 3),
              value: false,
              onChanged: (val) {},
            ),
    
            Expanded(
              child: GestureDetector(
                
                onTap: () => Navigator.of(context).pushNamed('login'),
    
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextSpan(
                        text: "الشروط والأحكام الخاصة بنا",
                        style: TextStyle(
                          color: customColor['lightGreen'],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
  }
}