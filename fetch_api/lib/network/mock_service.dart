import 'package:fetch_api/network/http_service.dart';

class MockService implements HttpService {
  @override
  Future<List<Map<String, dynamic>>> get(String url) async {
    return [
      {'userId': 1, 'id': 1, 'title': 'test1', 'body': 'test1'},
      {'userId': 2, 'id': 2, 'title': 'test2', 'body': 'test2'}
    ];
  }
}
