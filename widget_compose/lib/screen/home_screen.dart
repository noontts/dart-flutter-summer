import 'package:flutter/material.dart';
import 'package:widget_compose/di/get_it.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/port/product.dart';
import 'package:widget_compose/widget/compound/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widget/compound/navbar/home_navbar.dart';
import 'package:widget_compose/widget/compound/section/catalog.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final IProductService service = getIt.get<IProductService>();

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  _MyHomePageState() {
    getProduct();
  }

  void getProduct() async {
    final categories = await service.getCategories();
    final productFetchers = categories.map((e) => service.getByCategory(e));

    final products = await Future.wait(productFetchers);
    setState(() {
      this.categories = categories;
      this.products = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const HomeNavbar(),
          Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HomeJumbotron(
                            title: categories[index],
                            imageUrl: categoryImages[categories[index]]!),
                        Catalog(title: "All Product", products: products[index])
                      ],
                    );
                  }))
        ]),
      ),
    );
  }
}
