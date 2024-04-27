import 'package:fetch_api/entity/PostResponse.dart';

abstract class HttpService{
  Future get(String url);
}