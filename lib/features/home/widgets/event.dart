import 'package:flutter/material.dart';

Widget buildEvent() {
  return Column(
    children: [
      SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Text(
              index.toString(),
              style: TextStyle(color: Colors.white),
            );
          },
        ),
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          10,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0 ? Colors.amber : Colors.grey,
            ),
          ),
        ),
      ),
    ],
  );
}
