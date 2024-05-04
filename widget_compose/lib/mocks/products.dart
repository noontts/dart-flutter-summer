import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/models/product.dart';
import 'package:widget_compose/network/http/http_service.dart';
import 'package:widget_compose/port/product.dart';

var products = <ProductToDisplay>[
  ProductToDisplay(id: "1",category: "Popular",name: "Mid-length Coat",price: 200,imageUrl: "https://images.unsplash.com/photo-1603201498983-fe24be59d759?q=80&w=3136&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  ProductToDisplay(id: "2",category: "Popular",name: "Mid-length Coat",price: 300,imageUrl: "https://images.unsplash.com/photo-1615375395958-cf72629226d2?q=80&w=2179&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  ProductToDisplay(id: "3",category: "Popular",name: "Mid-length Coat",price: 450,imageUrl: "https://images.unsplash.com/photo-1615755152769-0803fadac608?q=80&w=3165&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  ProductToDisplay(id: "4",category: "Popular",name: "Mid-length Coat",price: 450,imageUrl: "https://images.unsplash.com/photo-1565784796667-98515d255f7d?q=80&w=3107&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
];


class MockProductRepository implements IProductRepository{
  final HttpService httpService;

  MockProductRepository(this.httpService);

  @override
  Future<List<Product>> getByCategory(String category) async {
    final response = await httpService.get(category);
    List<Product> products = [];
    for(dynamic res in response) {
      products.add(Product.fromJson(res));
    }
    return products;
  }
}
