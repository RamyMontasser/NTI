import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/service/gitit.dart';
import 'package:flutter_application_1/core/widgets/Appbar.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';
import 'package:flutter_application_1/features/Auth/presentation/management/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/Auth/widgets/signup_body_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getit<AuthRepo>()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        // backgroundColor: Colors.white,
        appBar: appBar(title: 'حساب جديد'),
        body: SignupBloc()
      ),
    );
  }
}
