import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/constants/screen_size.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/controllers/home_controller.dart';
import 'package:homepage/features/home/models/chart_songs.dart';
import 'package:homepage/features/home/widgets/chart_card.dart';

class ChartsWidget extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  ChartsWidget({super.key});

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

            Obx(() {
              if (homeController.isLoading.value) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: MyColor.kColorPrimary,
                    ),
                  ),
                );
              } else if (homeController.chartsong.value.songs == null ||
                  homeController.chartsong.value.songs!.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "No chart data available.",
                      style: TextStyle(
                        color: MyColor.kColorPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              }
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: homeController.chartsong.value.songs!.length,
                itemBuilder: (context, index) {
                  ChartSong data = homeController.chartsong.value.songs![index];
                  return buildChartCard(
                    position: data.position,
                    artist: data.song!.artistName,
                    title: data.song!.title,
                    image: data.song!.artistProfilePicture,
                  );
                },
              );
            }),

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
