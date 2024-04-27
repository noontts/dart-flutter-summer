import 'package:dio/dio.dart';
import 'package:fetch_api/entity/PostResponse.dart';
import 'package:fetch_api/network/HttpService.dart';

class DioService implements HttpService {
  Dio _dio = Dio();

  DioService() {
    _dio = Dio();
  }

  @override
  Future<List<PostResponse>> get(String url) async {
    final response = await _dio.get(url);
    List<PostResponse> posts = (response.data as List).map((json) => PostResponse.fromJson(json)).toList();
    return posts;
  }
}
