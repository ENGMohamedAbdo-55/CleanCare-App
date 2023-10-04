import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    Key? key,
    required this.color,
    required this.title,
    required this.height,
    required this.titleColor,
  }) : super(key: key);
  final Color color;
  final String title;
  final Color titleColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: () {},
      color: color,
      child: Text(
        title,
        style: TextStyle(fontSize: 17, color: titleColor),
      ),
    );
  }
}
