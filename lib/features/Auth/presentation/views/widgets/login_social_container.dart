import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

class LogInSocialContainer extends StatelessWidget {
  const LogInSocialContainer({
    super.key, required this.img,
  });
final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
     alignment: Alignment.center,
     height: 55,
     width: 55,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: AppColors.white,
       boxShadow: [BoxShadow(color: AppColors.black.withOpacity(0.3),
       blurRadius: 7,
       )]
     ),
     child: Image.asset(img,height: 30,),
    );
  }
}