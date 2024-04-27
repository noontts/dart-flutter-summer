// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:fetch_api/post_service.dart';
import 'package:fetch_api/network/dio_service.dart';
import 'package:fetch_api/network/mock_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Test fetch post data from API', () async {
    final httpService = MockService();
    final postService = PostService(httpService);
    final posts = await postService.getPosts();

    expect(posts, isNotEmpty);
    expect(posts[0].title, 'test');
    expect(posts[0].body, 'test');
  });

  test('Test get post API real integration', () async {
    final httpService = DioService();
    final postService = PostService(httpService);
    final posts = await postService.getPosts();

    expect(posts, isNotEmpty);
  });
}
