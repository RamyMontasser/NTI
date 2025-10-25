import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/entities/user_entity.dart';

class UserModel {
  final String name;
  final String email;
  final String uID;

  UserModel({required this.name, required this.email, required this.uID});

  factory UserModel.fromfirebaseuser(User user) {
    return UserModel(name: user.displayName ?? '', email: user.email ?? '', uID: user.uid);
  }

  UserEntity toEntity() {
    return UserEntity(name: name, email: email, uID: uID);
  }
}
