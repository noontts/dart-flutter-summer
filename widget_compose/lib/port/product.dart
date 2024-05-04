import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/models/product.dart';

abstract class IProductRepository{
  Future<List<Product>> getByCategory(String category);
}

abstract class IProductService {
  Future<List<ProductToDisplay>> getByCategory(String category);
}
