import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/controllers/navbar_controller.dart';
import 'package:homepage/features/home/widgets/button_nav.dart';

Widget buildBottomNav() {
  NavbarController navbarController = Get.put(NavbarController());
  return Container(
    decoration: BoxDecoration(color: MyColor.kColorBg),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GetBuilder<NavbarController>(
        builder: (navbarController) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBottonNav(
                icon: Icons.home,
                index: 0,
                currentIndex: navbarController.index,
                label: 'Home',
                onClick: () {
                  navbarController.changeIndex(0);
                },
              ),
              buildBottonNav(
                icon: Icons.event,
                index: 1,
                currentIndex: navbarController.index,
                label: 'Events',
                onClick: () {
                  navbarController.changeIndex(1);
                },
              ),
              buildBottonNav(
                icon: Icons.person,
                index: 2,
                currentIndex: navbarController.index,
                label: 'Profile',
                onClick: () {
                  navbarController.changeIndex(2);
                },
              ),
            ],
          );
        },
      ),
    ),
  );
}
