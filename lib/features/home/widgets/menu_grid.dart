import 'package:flutter/material.dart';
import 'package:homepage/shared/widgets/atoms/menu_button.dart';

Widget buildMenuGrid() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildMenuButton(
              icon: 'assets/images/ic_atlas_logo.svg',
              label: "Atlas",
            ),
            buildMenuButton(
              icon: 'assets/images/ic_home_reservation.svg',
              label: "Reservation",
            ),
            buildMenuButton(
              icon: 'assets/images/ic_home_outlets.svg',
              label: "Outlet",
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildMenuButton(
              icon: 'assets/images/ic_bottles.svg',
              label: "My Bottles",
            ),
            buildMenuButton(
              icon: 'assets/images/ic_whatson.svg',
              label: "What's On",
            ),
            buildMenuButton(
              icon: 'assets/images/ic_event.svg',
              label: "Events",
            ),
          ],
        ),
      ],
    ),
  );
}
