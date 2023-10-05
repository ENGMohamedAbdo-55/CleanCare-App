
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,

    required this.hintTxt,

  });
 
  final String hintTxt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextFormField(
       
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
       
        decoration: InputDecoration(
          
            hintText: hintTxt,
            hintStyle:  TextStyle(fontSize: 20, color: AppColors.lightGrey),
            // contentPadding:
            //     const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          
            
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                   )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide:  BorderSide(color: AppColors.grey))),
      
      
      ),
    );
  }
}
