import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  // constractor
  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
