import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/features/home/data/home_services.dart';
import 'package:homepage/features/home/models/whats_on.dart';

class EventController extends GetxController {
  final HomeServices _homeServices = Get.put(HomeServices());
  final currentPage = 0.obs;
  final totalPage = 0.obs;
  late PageController pageController;
  late Timer _timer;
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;
  RxList<WhatsOn> event = <WhatsOn>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchEvent();
    pageController = PageController(initialPage: currentPage.value);
    startAutoSlide();
  }

  @override
  void onClose() {
    _timer.cancel();
    pageController.dispose();
    super.onClose();
  }

  Future<void> fetchEvent() async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final response = await _homeServices.getEventFromAPI();
      event.value = response;
      totalPage.value = response.length;
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPage.value < totalPage.value - 1) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          currentPage.value,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    });
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
