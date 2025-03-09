import 'package:homepage/features/home/data/home_services.dart';

class HomeViewModel extends HomeServices {
  Future<dynamic> doGetChart() async {
    dynamic product = await getChartFromAPI();

    return product;
  }
}
