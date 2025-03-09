import 'package:dio/dio.dart';
import 'package:homepage/constants/url.dart';
import 'package:homepage/features/home/models/song_response.dart';
import 'package:homepage/features/home/models/whats_on.dart';
import 'package:homepage/packages/dio.dart';

class HomeServices {
  Dio dio = getDio();

  Future<SongsResponse> getChartFromAPI() async {
    try {
      final response = await dio.get('$baseUrl/songs/charts/latest');
      return SongsResponse.fromJson(response.data['data']);
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }

  Future<List<WhatsOn>> getEventFromAPI() async {
    try {
      final response = await dio.get('$baseUrl/whats-on/banner');
      final List<dynamic> data = response.data['data'];
      return data.map((json) => WhatsOn.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
