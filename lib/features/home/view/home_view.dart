import 'package:flutter/material.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/widgets/charts.dart';
import 'package:homepage/features/home/widgets/favorite_outlets.dart';
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
      appBar: AppBar(
        backgroundColor: MyColor.kColorBg,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Hi, HWG People',
          style: TextStyle(
            color: MyColor.kColorText,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          ), 
          Text('Click to Login',
          style: TextStyle(
            color: MyColor.kColorBrand,
            fontSize: 15
          ),
          )
          ],
          ),
          centerTitle: false,
      ),
      body:   Column(
            children: [
              Container(
                height: 200,
          child: PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Text('uhuy',
              style: TextStyle(
                color: Colors.white
              ),
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
        buildVoucherLoginButton(),
        buildMenuGrid(),
        buildFavoriteOutlets(),
              ChartsWidget(),
            ],
          ),
    );
  }
}
