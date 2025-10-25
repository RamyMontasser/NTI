import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/entities/user_entity.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';
import 'package:meta/meta.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepo authRepo;
  SignupCubit(this.authRepo) : super(SignupInitial());
  Future<void> Signup({
    required String email,
    required String pass,
    required String name,
  }) async {
    emit(SignupLoading());
    var entity = await authRepo.createUserWithEmailAndPassword(
      name: name,
      email: email,
      pass: pass,
    );
    entity.fold(
      (failure) {
        emit(SignupFailure(failure.errormsg));
        debugPrint('accout not created');
      },
      (user) {
        emit(SignupSuccess(user));
        debugPrint('accout had created successifully');
      },
    );
  }
}
