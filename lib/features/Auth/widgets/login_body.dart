import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/service/Firebase_auth_service.dart';
import 'package:flutter_application_1/core/service/auth_service.dart';
import 'package:flutter_application_1/core/widgets/asking_row.dart';
import 'package:flutter_application_1/core/widgets/button.dart';
import 'package:flutter_application_1/core/widgets/text_feild.dart';
import 'package:flutter_application_1/features/Auth/data_layer/repo/auth_repo_imp.dart';
import 'package:flutter_application_1/features/Auth/widgets/forgetpass_q.dart';
import 'package:flutter_application_1/features/Auth/widgets/google_registeratiion.dart';
import 'package:flutter_application_1/features/Auth/widgets/seperator_row.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Icon showenPass = Icon(Icons.visibility);
  Icon hidenPass = Icon(Icons.visibility_off);
  bool securepass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BuildTextFormFeild(
                    controller: email,
                    label: "البريد الالكتروني",
                    obsecure: false,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 15),

                  BuildTextFormFeild(
                    controller: password,
                    label: "كلمة المرور",
                    obsecure: securepass,
                    suffex: buildEyeIcon(),
                    keyboardType: TextInputType.visiblePassword,
                  ),

                  ForgetpassQ(),

                  SizedBox(height: 10),

                  BuildButton(
                    title: 'تسجيل دخول',
                    fun: () async{
                      AuthService service = FirebaseAuthService();
                      var login = AuthRepoImp(authService: service);
                      var entity = await login.loginWithEmailAndPassword(
                        email: email.text,
                        pass: password.text,
                      );
                      entity.fold(
                        (failure) => debugPrint('Login failed: ${failure.errormsg}'),
                        (user) {
                          debugPrint('Login success for ${user.name}');
                          Navigator.of(context).pushNamed('home');
                        },
                      );
                    },
                  ),

                  SizedBox(height: 10),

                  buildAskingRow(
                    context,
                    quistion: "لا تمتلك حساب؟",
                    action: 'قم بإنشاء حساب',
                    route: 'signup',
                  ),

                  SizedBox(height: 10),

                  SeperatorRow(),

                  SizedBox(height: 15),

                  GoogleRegisteratiion(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEyeIcon() {
    return IconButton(
      onPressed: () {
        setState(() {
          securepass = !securepass;
        });
      },
      icon: securepass ? hidenPass : showenPass,
    );
  }
}
