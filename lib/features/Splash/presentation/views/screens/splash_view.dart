import 'dart:ffi';

import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/log_in_view.dart';
import 'package:cleancare_app/features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  OnBoardingView()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.logo1),
      ),
    );
  }
}
