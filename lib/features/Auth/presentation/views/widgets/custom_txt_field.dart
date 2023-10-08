import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPassTextField extends StatefulWidget {
  const CustomPassTextField({
    super.key,
    required this.hintTxt,
  });

  final String hintTxt;

  @override
  State<CustomPassTextField> createState() => _CustomPassTextFieldState();
}

class _CustomPassTextFieldState extends State<CustomPassTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextFormField(
        obscureText: isVisible,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.mainColor)),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: Icon(
                isVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 27,
                color: AppColors.lightGrey,
              ),
            ),
            hintText: widget.hintTxt,
            hintStyle: TextStyle(fontSize: 20, color: AppColors.lightGrey),
            // contentPadding:
            //     const EdgeInsets.symmetric(vertical: 7, horizontal: 10),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide()),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: AppColors.grey))),
      ),
    );
  }
}

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
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.mainColor)),
            suffixIcon:  Icon(
              Icons.email_outlined,
              size: 27,
                  color: AppColors.lightGrey,
            ),
            hintText: hintTxt,
            hintStyle: TextStyle(fontSize: 20, color: AppColors.lightGrey),
            // contentPadding:
            //     const EdgeInsets.symmetric(vertical: 7, horizontal: 10),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide()),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: AppColors.grey))),
      ),
    );
  }
}
