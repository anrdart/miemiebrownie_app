import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../model/pegawai.dart';

class PegawaiService {
  final Dio _dio = ApiClient().dio;

  Future<List<Pegawai>> listData() async {
    try {
      final Response response = await _dio.get('pegawai');
      final List<dynamic> data = response.data as List<dynamic>;
      final List<Pegawai> result =
          data.map((json) => Pegawai.fromJson(json)).toList();
      return result;
    } catch (error) {
      throw Exception('Failed to fetch data');
    }
  }

  Future<Pegawai> simpan(Pegawai pegawai) async {
    try {
      final Map<String, dynamic> data = pegawai.toJson();
      final Response response = await _dio.post('pegawai', data: data);
      final Pegawai result = Pegawai.fromJson(response.data);
      return result;
    } catch (error) {
      throw Exception('Failed to save data');
    }
  }

  Future<Pegawai> ubah(Pegawai pegawai, String id) async {
    try {
      final Map<String, dynamic> data = pegawai.toJson();
      final Response response = await _dio.put('pegawai/$id', data: data);
      final Pegawai result = Pegawai.fromJson(response.data);
      return result;
    } catch (error) {
      throw Exception('Failed to update data');
    }
  }

  Future<Pegawai> getById(String id) async {
    try {
      final Response response = await _dio.get('pegawai/$id');
      final Pegawai result = Pegawai.fromJson(response.data);
      return result;
    } catch (error) {
      throw Exception('Failed to fetch data');
    }
  }

  Future<Pegawai> hapus(Pegawai pegawai) async {
    try {
      final Response response = await _dio.delete('pegawai/${pegawai.id}');
      final Pegawai result = Pegawai.fromJson(response.data);
      return result;
    } catch (error) {
      throw Exception('Failed to delete data');
    }
  }
}
