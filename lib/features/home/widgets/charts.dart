import 'package:flutter/material.dart';
import 'package:homepage/constants/screen_size.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/widgets/chart_card.dart';

class ChartsWidget extends StatelessWidget {
  const ChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: MyColor.kColorBgAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'HWGPeople Top Charts',
                style: TextStyle(
                  color: MyColor.kColorText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return buildChartCard(position: index + 1);
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getWidth(context) * 0.3,
                  child: Image.asset(
                    'assets/images/ic_spotify.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: getWidth(context) * 0.3,
                  child: Image.asset(
                    'assets/images/ic_applemusic.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
