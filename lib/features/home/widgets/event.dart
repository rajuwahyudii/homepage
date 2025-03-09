import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/constants/style/color.dart';
import 'package:homepage/features/home/controllers/event_controller.dart';
import 'package:homepage/features/home/models/whats_on.dart';
import 'package:homepage/shared/widgets/atoms/error_message.dart';
import 'package:homepage/shared/widgets/atoms/loading.dart';

Widget buildEvent() {
  EventController eventController = Get.put(EventController());
  return Obx(() {
    if (eventController.isLoading.value) {
      return buildLoading();
    } else if (eventController.event.isEmpty) {
      return buildErrorMessage(eventController.errorMessage.value);
    }
    List<WhatsOn> data = eventController.event;
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            onPageChanged: eventController.onPageChanged,
            controller: eventController.pageController,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image:
                      data[index].imageUrl != null
                          ? DecorationImage(
                            image: NetworkImage(data[index].imageUrl!),
                            fit: BoxFit.cover,
                          )
                          : null,
                  color: MyColor.kColorBgAccent2,
                ),
                child:
                    data[index].imageUrl != null
                        ? null
                        : Icon(Icons.person, color: MyColor.kColorPrimary),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            data.length,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    index == eventController.currentPage.value
                        ? MyColor.kColorPrimary
                        : MyColor.kColorBgAccent2,
              ),
            ),
          ),
        ),
      ],
    );
  });
}
