import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/widgets/bottom_nav.dart';
import 'package:homepage/features/home/widgets/charts.dart';
import 'package:homepage/features/home/widgets/event.dart';
import 'package:homepage/features/home/widgets/favorite_outlets.dart';
import 'package:homepage/features/home/widgets/greeting.dart';
import 'package:homepage/features/home/widgets/login_voucher.dart';
import 'package:homepage/features/home/widgets/menu_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.kColorBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildGreeting(),
              buildEvent(),
              buildVoucherLoginButton(),
              buildMenuGrid(),
              buildFavoriteOutlets(),
              ChartsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNav(),
    );
  }
}
