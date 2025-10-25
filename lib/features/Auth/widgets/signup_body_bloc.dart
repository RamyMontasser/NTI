import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/help_functions/custom_snackbar.dart';
import 'package:flutter_application_1/features/Auth/presentation/management/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/Auth/widgets/sign_up_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupBloc extends StatelessWidget {
  const SignupBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading,
          child: SignUpBody(),
        );
      },
      listener: (context, state) {
        if (state is SignupSuccess) {
          customSnackBar(context: context, msg: 'تم انشاء حساب');
        } else if (state is SignupFailure) {
          customSnackBar(context: context, msg: state.message);
        }
      },
    );
  }
}
