import 'package:dio/dio.dart';

Dio getDio() {
  final Dio dio = Dio();

  dio.options.connectTimeout = const Duration(seconds: 60);
  dio.options.receiveTimeout = const Duration(seconds: 60);
  dio.interceptors.add(LogInterceptor());
  return dio;
}
