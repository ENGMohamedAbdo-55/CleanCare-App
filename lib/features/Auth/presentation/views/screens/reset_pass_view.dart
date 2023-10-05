
import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_txt_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(physics: const BouncingScrollPhysics(),
      children: [
  Image.asset(
              Assets.logo1,
              height: 150,
              width: 50,
           
            ),
            Center(
              child: Text(
                      'Reset Password',
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
            ),
Image.asset(
              Assets.resetPassImg,
              height: 270,
              width: 300,
           
            ),
 Center(
              child: Text(
                      'Enter your new password and confirm it',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
            ),
            const SizedBox(height: 20,),
 const Padding(
   padding:  EdgeInsets.symmetric(horizontal: 30.0),
   child: CustomTextField(hintTxt: "Password"),
 ),
 const SizedBox(height: 15,),
 const Padding(
   padding:  EdgeInsets.symmetric(horizontal: 30.0),
   child: CustomTextField(hintTxt: "Confirm Password"),
 ),
  const SizedBox(height: 15,),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 40.0),
   child: CustomMainButton(color: AppColors.mainColor, title: "Submit", titleColor: AppColors.white),
 )

      ],),
    );
  }
}