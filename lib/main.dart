import 'package:flutter/material.dart';
import 'package:homepage/router/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'HomePage HW', routerConfig: router);
  }
}
