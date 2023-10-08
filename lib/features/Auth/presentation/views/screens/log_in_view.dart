import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/custom_txt_field.dart';
import 'package:cleancare_app/features/Auth/presentation/views/widgets/login_social_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});
  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool? isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Image.asset(
              Assets.logo1,
              height: 150,
              width: 50,
           
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.back,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'log in into your ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'account ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),
             const SizedBox(
              height: 30,
            ),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomTextField(hintTxt: "email"),
            ),
            const SizedBox(
              height: 20,
            ),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomPassTextField(hintTxt: "Password"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.mainColor,
                        value: isRemembered,
                        onChanged: (val) {
                          setState(() {
                            isRemembered = val;
                          });
                        }),
                    const Text(
                      'Remember me ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Text(
                  'Forget password? ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomMainButton(
                  color: AppColors.mainColor,
                  title: "Log In",
                  titleColor: AppColors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            //Container(height: 0.9,width: 20,color: AppColors.black,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 80,
                      child: Divider(
                        color: AppColors.grey,
                        thickness: 1,
                      )),
                  Text(
                    '  or log in with   ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey),
                  ),
                  SizedBox(
                      width: 80,
                      child: Divider(
                        color: AppColors.grey,
                        thickness: 1,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogInSocialContainer(img: Assets.faceBook),
                  LogInSocialContainer(img: Assets.google),
                  LogInSocialContainer(img: Assets.apple),
                ],
              ),
            ),
            const SizedBox(height: 20,),
                   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account? ",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightGrey),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("SignUp");
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
