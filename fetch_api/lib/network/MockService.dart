import 'package:fetch_api/entity/PostResponse.dart';
import 'package:fetch_api/network/HttpService.dart';

class MockService implements HttpService{
  @override
  Future<List<PostResponse>> get(String url) async {
    return [PostResponse(userId: 1,id: 1,title: 'test',body: 'test'),
    PostResponse(userId: 2, id: 2, title: 'test2', body: 'test2')];
  }
}

