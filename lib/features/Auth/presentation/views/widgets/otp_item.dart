import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpItem extends StatelessWidget {
  const OtpItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
          alignment: Alignment.center,
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.3),
                  blurRadius: 7,
                )
              ]),
          child: TextFormField(
            
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            
            ],
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            onChanged: (val) {
              if (val.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            
          )),
    );
  }
}
