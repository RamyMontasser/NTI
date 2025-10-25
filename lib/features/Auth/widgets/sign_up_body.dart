import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/asking_row.dart';
import 'package:flutter_application_1/core/widgets/button.dart';
import 'package:flutter_application_1/core/widgets/text_feild.dart';
import 'package:flutter_application_1/features/Auth/presentation/management/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/Auth/widgets/roles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBody extends StatefulWidget {
  SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool securePass = true;
  Icon showenPass = Icon(Icons.visibility);
  Icon hidenPass = Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              BuildTextFormFeild(
                controller: name,
                label: 'الاسم كامل',
                obsecure: false,
                keyboardType: TextInputType.name,
              ),

              SizedBox(height: 15),

              BuildTextFormFeild(
                controller: email,
                label: 'البريد الالكتروني',
                obsecure: false,
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 15),

              BuildTextFormFeild(
                controller: password,
                label: 'كلمة المرور',
                obsecure: securePass,
                suffex: buildEyeIcon(),
                keyboardType: TextInputType.visiblePassword,
              ),

              SizedBox(height: 15),

              Roles(),

              SizedBox(height: 15),

              BuildButton(
                title: 'إنشاء حساب ',
                fun: () {
                  context.read<SignupCubit>().Signup(
                    email: email.text, 
                    pass: password.text, 
                    name: name.text,);
                },
              ),

              SizedBox(height: 15),

              buildAskingRow(
                context,
                quistion: 'تمتلك حساب بالفعل',
                action: 'تسجيل دخول',
                route: 'login',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEyeIcon() {
    return IconButton(
      onPressed: () {
        setState(() {
          securePass = !securePass;
        });
      },
      icon: securePass ? hidenPass : showenPass,
    );
  }
}
