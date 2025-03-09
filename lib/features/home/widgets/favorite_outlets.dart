import 'package:flutter/widgets.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildFavoriteOutlets() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Favorite Outlets',
          style: TextStyle(
            color: MyColor.kColorText,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyColor.kColorBgAccent,

            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            'Your favorite oulets will be shown here. Add some for easier access to reservation and more.',
            style: TextStyle(color: MyColor.kColorText, fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
