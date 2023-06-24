import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://6497526683d4c69925a3978d.mockapi.io/miemiebrownie/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  Future<Response> get(String path) async {
    try {
      final response = await dio.get(path);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      final response = await dio.post(path, data: data);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      final response = await dio.put(path, data: data);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> delete(String path) async {
    try {
      final response = await dio.delete(path);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
