import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/Appbar.dart';
import 'package:flutter_application_1/core/widgets/button.dart';
import 'package:flutter_application_1/core/widgets/text_feild.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  TextEditingController phoneNum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: appBar(title: 'نسيان كلمة المرور'),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(height: 30,),

              Form(
                child: BuildTextFormFeild(
                  controller: phoneNum,
                  label: '',
                  obsecure: false,
                  keyboardType: TextInputType.phone,
                ),
              ),

              SizedBox(height: 30,),

              BuildButton(title: 'نسيت كلمة المرور',fun: (){},),

            ],
          ),
        ),
      ),
    );
  }
}
