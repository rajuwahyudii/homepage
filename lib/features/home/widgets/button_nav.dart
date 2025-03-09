import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildBottonNav({
  IconData? icon,
  String? label = '',
  required int currentIndex,
  required int index,
  required Function onClick,
}) {
  return GestureDetector(
    onTap: () {
      onClick();
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color:
              index == currentIndex
                  ? MyColor.kColorPrimary
                  : MyColor.kColorBgAccent2,
          size: 24,
        ),
        SizedBox(height: 4),
        Text(
          label!,
          style: TextStyle(
            color:
                index == currentIndex
                    ? MyColor.kColorPrimary
                    : MyColor.kColorBgAccent2,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
