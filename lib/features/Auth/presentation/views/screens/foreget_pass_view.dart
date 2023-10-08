
import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_txt_field.dart';
import 'package:flutter/material.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

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
                      'Forget Password?',
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
            ),
Image.asset(
              Assets.forgetPassImg,
              height: 300,
              width: 280,
           
            ),
            const SizedBox(height: 15,),
 Center(
              child: Text(
                      'Don’t worry it happesns, please enter ',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
            ),
 Center(
              child: Text(
                      'your email address',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
            ),
            const SizedBox(height: 27,),
  const Padding(
   padding:  EdgeInsets.symmetric(horizontal: 30.0),
   child: CustomTextField(hintTxt: "Enter Your Email"),
 ),
 const SizedBox(height: 10,),
 
  const SizedBox(height: 7,),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 40.0),
   child: CustomMainButton(color: AppColors.mainColor, title: "Send", titleColor: AppColors.white),
 )

      ],),
    );
  }
}