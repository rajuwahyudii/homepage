import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

Widget buildChartCard({
  int? position,
  String? title = '',
  String? image = '',
  String? artist = '',
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 45,
          child: Text(
            '$position${position == 1
                ? 'st'
                : position == 2
                ? 'nd'
                : position == 3
                ? 'rd'
                : 'th'}',
            style: TextStyle(
              fontSize: 16,
              fontWeight:
                  position == 1
                      ? FontWeight.bold
                      : position == 2 || position == 3
                      ? FontWeight.w600
                      : FontWeight.normal,
              color:
                  position == 1 || position == 2 || position == 3
                      ? MyColor.kColorPrimary
                      : MyColor.kColorText,
            ),
          ),
        ),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:
                image != null
                    ? DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    )
                    : null,
            color: MyColor.kColorBgAccent2,
          ),
          child:
              image != null
                  ? null
                  : Icon(Icons.person, color: MyColor.kColorPrimary),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: MyColor.kColorText,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Text(
                artist ?? '-',
                style: TextStyle(fontSize: 14, color: MyColor.kColorBgAccent2),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
