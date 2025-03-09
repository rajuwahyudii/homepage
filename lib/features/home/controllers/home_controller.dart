import 'package:get/get.dart';
import 'package:homepage/features/home/data/home_services.dart';
import 'package:homepage/features/home/models/song_response.dart';

class HomeController extends GetxController {
  final HomeServices _homeServices = Get.put(HomeServices());
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;

  Rx<SongsResponse> chartsong = SongsResponse().obs;

  @override
  void onInit() {
    super.onInit();
    fetchChart();
  }

  Future<void> fetchChart() async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final response = await _homeServices.getChartFromAPI();
      chartsong.value = response;
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void refreshData() {
    fetchChart();
  }
}
