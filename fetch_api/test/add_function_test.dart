import 'package:fetch_api/add_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main (){

  test('test add 1, 2 return 3', () {
    final addService = AddService();
    final result = addService.add(1,2);

    expect(result, 3);
  });

  test('test add -1, 2 return 1', () {
    final addService = AddService();
    final result = addService.add(-1,2);

    expect(result, 1);
  });

  test('test add -1, -2 return -3', () {
    final addService = AddService();
    final result = addService.add(-1,-2);

    expect(result, -3);
  });

  test('test add 0.1, 0.2 return 0.3', () {
    final addService = AddService();
    final result = addService.add(0.1, 0.2);

    expect(result, 0.3);
  });
}
