import 'package:fetch_api/entity/Post.dart';
import 'package:fetch_api/entity/PostResponse.dart';
import 'package:fetch_api/network/HttpService.dart';

class PostService{
  final HttpService _httpService;

  PostService(this._httpService);

  Future<List<Post>> getPosts() async {
    List<PostResponse> response = await _httpService.get("https://jsonplaceholder.typicode.com/posts");
    return response.map((res) => Post(title: res.title!, body: res.body!)).toList();
  }
}