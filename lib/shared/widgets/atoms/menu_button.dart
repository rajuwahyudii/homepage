import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildMenuButton(
  {required String icon,
   required String label,
    Color? color}) {
    return Column(
      children: [
        SvgPicture.asset(icon, width: 40, height: 40,),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: MyColor.kColorText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }