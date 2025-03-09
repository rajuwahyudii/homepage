import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildVoucherLoginButton() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
        color: MyColor.kColorBgAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/ic_user_login.svg',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 16),
            Text(
              "Login to see voucher and point information",
              style: TextStyle(color: MyColor.kColorText, fontSize: 12),
            ),
          ],
        ),
      ),
    ),
  );
}
