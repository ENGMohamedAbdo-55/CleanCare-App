import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: AppColors.mainColor,
  body: ListView(
  physics: const BouncingScrollPhysics(),
    children: [
      Image.asset(Assets.welcome1,fit: BoxFit.fill,),
      Container(
      height: 280,
      width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
            color: AppColors.white),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome To CleanCare',
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'for home services',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMainButton(
                    titleColor: AppColors.white,
                    color: AppColors.mainColor,
                    title: "Log In",
                   ),
                const SizedBox(
                  height: 20,
                ),
            
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.mainColor),
                      color: AppColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 17, color: AppColors.mainColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Continue as a Guest',
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  )
  
);
  }
}
