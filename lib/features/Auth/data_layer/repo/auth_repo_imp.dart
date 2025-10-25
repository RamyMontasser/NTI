// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/custom_exception.dart';
import 'package:flutter_application_1/core/errors/failure.dart';
import 'package:flutter_application_1/core/service/auth_service.dart';
import 'package:flutter_application_1/features/Auth/data_layer/models/user_model.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/entities/user_entity.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  AuthService authService;
  AuthRepoImp({required this.authService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String pass,
  }) async {
    try {
      var user = await authService.SignupAuth(email: email, password: pass);
      UserModel userModel = UserModel.fromfirebaseuser(user);
      UserEntity userEntity = userModel.toEntity();
      return right(userEntity);

    } on CustomException catch (e) {
      return left(FriebaseFailure(errormsg: e.msg));

    } catch (e) {
      return left(FriebaseFailure(errormsg: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword({required String email, required String pass,}) async {
    try {
      var user = await authService.LiginAuth(email: email, password: pass);
      UserModel userModel = UserModel.fromfirebaseuser(user);
      UserEntity userEntity = userModel.toEntity();
      return right(userEntity);

    } on CustomException catch (e) {
      return left(FriebaseFailure(errormsg: e.msg));

    } catch (e) {
      return left(FriebaseFailure(errormsg: e.toString()));
    }
  }
}
