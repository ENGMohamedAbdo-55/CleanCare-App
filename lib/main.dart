import 'package:cleancare_app/features/Auth/presentation/views/screens/foreget_pass_view.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/log_in_view.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/mail_verification_view.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/reset_pass_view.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/welcome_view.dart';
import 'package:cleancare_app/features/Splash/presentation/views/screens/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home:SplashView (),
    );
  }
}
//ResetPassView
//EmailVerificationView
//LogInView
//ForgetPassView