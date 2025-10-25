import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/entities/user_entity.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo login;
  LoginCubit(this.login) : super(LoginInitial());
  Future<void> Login({
    required String email,
    required String pass,
    required String name,
  }) async {
    var entity = await login.createUserWithEmailAndPassword(
      name: name,
      email: email,
      pass: pass,
    );
    entity.fold((failure) => debugPrint('signup failed: ${failure.errormsg}'), (
      user,
    ) {
      debugPrint('accout had created successifully');
    });
  }

}
