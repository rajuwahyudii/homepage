import 'package:dio/dio.dart';
import 'package:homepage/constants/url.dart';
import 'package:homepage/features/home/models/song_response.dart';
import 'package:homepage/packages/dio.dart';

class HomeServices {
  Dio dio = getDio();

  Future<SongsResponse> getChartFromAPI() async {
    try {
      final response = await dio.get('$baseUrl/songs/charts/latest');
      return SongsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
