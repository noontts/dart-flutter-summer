import 'package:flutter/material.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/widget/compound/list/products_list.dart';
import 'package:widget_compose/widget/elements/texts/text_title.dart';

class Catalog extends StatelessWidget {
  final String title;
  final List<ProductToDisplay> products;
  final OnSelectProduct? onSelectProduct;
  const Catalog({super.key, required this.title, required this.products, this.onSelectProduct});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 8.0, bottom: 10.0),
            child: TextTitle(title: title),
          ),
        ),
        ProductList(productList: products, onSelectProduct: onSelectProduct)
      ],
    );
  }
}
