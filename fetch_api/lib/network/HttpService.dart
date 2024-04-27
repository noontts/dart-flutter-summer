import 'package:fetch_api/entity/PostResponse.dart';

abstract class HttpService{
  Future<List<PostResponse>> get(String url);
}