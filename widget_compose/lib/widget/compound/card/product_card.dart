import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/widget/compound/card/product_info.dart';

class ProductCard extends StatelessWidget {
  final ProductToDisplay product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        print("ID: " + product.id + ", Name: " + product.name);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 250,
        width: 150,
        child: Stack(
          children: <Widget>[
            Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              height: 250,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: ProductInfo(
                  name: product.name,
                  price: (product.price).toString(),
                )),
          ],
        ),
      ),
    );
  }
}
