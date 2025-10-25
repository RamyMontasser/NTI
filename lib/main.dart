import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Auth/View/forget_pass.dart';
import 'package:flutter_application_1/features/Auth/View/log_In.dart';
import 'package:flutter_application_1/features/Auth/View/sign_up.dart';
import 'package:flutter_application_1/features/Home/View/home.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_application_1/core/service/gitit.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getitsetup();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale('ar'),

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white)
      ),
      routes: {
        "signup":(context)=> Signup(),
        "login":(context)=> LogIn(),
        "forgetpass":(context)=> Forgetpass(),
        "home":(context)=> Home(),
      },
      title: 'E-Commerce',
      home:Signup(),
    );
  }
}
