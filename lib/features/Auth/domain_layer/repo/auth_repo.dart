import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/failure.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String pass,
  });
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword({
    required String email,
    required String pass,
  });
}
