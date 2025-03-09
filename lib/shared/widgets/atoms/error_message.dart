import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildErrorMessage(String? message) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: Text(
        message ?? '',
        style: TextStyle(
          color: MyColor.kColorPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
