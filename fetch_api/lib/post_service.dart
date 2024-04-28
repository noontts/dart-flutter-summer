import 'package:fetch_api/entity/post.dart';
import 'package:fetch_api/entity/post_response.dart';
import 'package:fetch_api/network/http_service.dart';

class PostService {
  final HttpService _httpService;

  PostService(this._httpService);

  Future<List<Post>> getPosts() async {
    final response =
        await _httpService.get("https://jsonplaceholder.typicode.com/posts");
    final posts = _mapPostData(response);
    return posts
        .map((res) => Post(title: res.title!, body: res.body!))
        .toList();
  }

  List<PostResponse> _mapPostData(dynamic data) {
    return (data as List).map((post) => PostResponse.fromJson(post)).toList();
  }
}
