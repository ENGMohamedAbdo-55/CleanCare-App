import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_txt_field.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/otp_item.dart';
import 'package:flutter/material.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset(
            Assets.logo1,
            height: 150,
            width: 50,
          ),
          Center(
            child: Text(
              'Email Verification',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            Assets.emailVerImg,
            height: 300,
            width: 280,
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Please type OTP code that given you',
              style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OtpItem(),
              OtpItem(),
              OtpItem(),
              OtpItem(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: CustomMainButton(
                color: AppColors.mainColor,
                title: "Verify",
                titleColor: AppColors.white),
          )
        ],
      ),
    );
  }
}

