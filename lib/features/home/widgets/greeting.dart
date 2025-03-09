import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildGreeting() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, HWG People',
          style: TextStyle(
            color: MyColor.kColorText,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          child: Text(
            'Click to Login',
            style: TextStyle(color: MyColor.kColorBrand, fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
