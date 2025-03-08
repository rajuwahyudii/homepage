import 'package:flutter/material.dart';
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
              CircleAvatar(
                backgroundColor: MyColor.kColorPrimary,
                radius: 24,
                child: Icon(
                  Icons.person, 
                color: MyColor.kColorText,
                )
              ),
              SizedBox(width: 16),
              Text(
                "Login to see voucher and point information",
                style: TextStyle(
                  color: MyColor.kColorText,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }