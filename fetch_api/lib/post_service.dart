import 'package:fetch_api/entity/post.dart';
import 'package:fetch_api/entity/post_response.dart';
import 'package:fetch_api/network/http_service.dart';

class PostService{
  final HttpService _httpService;

  PostService(this._httpService);

  Future<List<Post>> getPosts() async {
    List<PostResponse> response = await _httpService.get("https://jsonplaceholder.typicode.com/posts");
    return response.map((res) => Post(title: res.title!, body: res.body!)).toList();
  }
}