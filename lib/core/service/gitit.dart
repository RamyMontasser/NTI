import 'package:flutter_application_1/core/service/auth_service.dart';
import 'package:flutter_application_1/core/service/Firebase_auth_service.dart';
import 'package:flutter_application_1/features/Auth/data_layer/repo/auth_repo_imp.dart';
import 'package:flutter_application_1/features/Auth/domain_layer/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void getitsetup() {
  getit.registerSingleton<AuthService>(FirebaseAuthService());
  getit.registerSingleton<AuthRepo>(AuthRepoImp(authService: getit<AuthService>()));
}
