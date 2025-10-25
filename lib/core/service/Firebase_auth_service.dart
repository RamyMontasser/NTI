import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/service/auth_service.dart';
import 'package:flutter_application_1/core/errors/custom_exception.dart';

class FirebaseAuthService extends AuthService {
  @override
  Future<User> SignupAuth({required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email, 
            password: password);

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(msg: 'The account already exists for that email.');
      }else if (e.code == 'network-requist-failed') {
        throw CustomException(msg: 'The network requist .');
      }else{
        throw CustomException(msg: 'The account already exists for that email.');
      }
    } catch (e) {
      throw CustomException(msg: 'Exception is $e');
    }
    
    
  }
  
  @override
  Future<User> LiginAuth({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(msg: 'Wrong password provided for that user.');
      } else {
        throw CustomException(msg: '');
      }
    } catch (e) {
      throw CustomException(msg: 'error is $e');
    }
  }
}
