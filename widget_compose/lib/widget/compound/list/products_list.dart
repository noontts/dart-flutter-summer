import 'package:flutter/material.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/widget/compound/card/product_card.dart';

class ProductList extends StatelessWidget {
  final List<ProductToDisplay> productList;
  const ProductList({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductCard(product: productList[index]);
          }),
        ),
      );
  }
}
