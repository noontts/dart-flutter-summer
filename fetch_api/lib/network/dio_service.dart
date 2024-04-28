import 'package:dio/dio.dart';
import 'package:fetch_api/network/http_service.dart';

class DioService implements HttpService {
  late Dio _dio;

  DioService() {
    _dio = Dio();
  }

  @override
  Future<dynamic> get(String url) async {
    final response = await _dio.get(url);
    return response.data;
  }
}
