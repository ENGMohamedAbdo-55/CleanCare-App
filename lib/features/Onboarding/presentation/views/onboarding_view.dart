import 'package:cleancare_app/features/Onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
   const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          
          OnBoardingBody(),
        ],
      ),
    );
  }
}
