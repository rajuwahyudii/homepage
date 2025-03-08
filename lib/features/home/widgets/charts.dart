import 'package:flutter/material.dart';
import 'package:homepage/constants/screen_size.dart';

class ChartsWidget extends StatelessWidget {
  const ChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context) * 0.8, 
    child: Text('Charts', 
    style: TextStyle(
      color: Colors.amberAccent
      ),
      ),
    );
  }
}
