import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/help_functions/custom_snackbar.dart';
import 'package:flutter_application_1/core/service/gitit.dart';
import 'package:flutter_application_1/core/widgets/Appbar.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';
import 'package:flutter_application_1/features/Auth/presentation/management/cubit/login_cubit.dart';
import 'package:flutter_application_1/features/Auth/presentation/management/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/Auth/widgets/login_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getit<AuthRepo>()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBar(title: 'تسجيل دخول'),
        body:BlocConsumer<LoginCubit, LoginState>(
              builder: (context, state) {
                return ModalProgressHUD(
                  inAsyncCall: state is SignupLoading,
                  child: LoginBody(),
                );
              },
              listener: (context, state) {
                if (state is SignupSuccess) {
                  customSnackBar(context: context, msg: 'تم انشاء حساب');
                } else if (state is SignupFailure) {
                  customSnackBar(context: context, msg: 'فشل انشاء الحساب');
                }
              },
            )
      ),
    );
  }
}
