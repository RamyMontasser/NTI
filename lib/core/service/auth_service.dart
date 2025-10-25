import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User> SignupAuth({required String email, required String password});
  Future<User> LiginAuth({required String email, required String password});
}
