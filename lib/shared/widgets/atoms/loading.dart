import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildLoading() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: CircularProgressIndicator(color: MyColor.kColorPrimary),
    ),
  );
}
