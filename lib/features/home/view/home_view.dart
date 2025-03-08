import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.kColorBg,
        title: Column(
          children: [Text('Hi, HWG People'), Text('Click to Login')],
        ),
      ),
      body: Container(),
    );
  }
}
