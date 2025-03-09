import 'package:get/get.dart';
import 'package:homepage/features/home/data/home_services.dart';
import 'package:homepage/features/home/models/song_response.dart';

class HomeController extends GetxController {
  final HomeServices _homeServices = Get.find<HomeServices>();

  RxBool isLoading = false.obs;
  RxList<SongsResponse> songs = <SongsResponse>[].obs;
  RxString errorMessage = ''.obs;

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
      // posts.value = response.map((json) => Post.fromJson(json)).toList();
      // posts.value = response;
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
