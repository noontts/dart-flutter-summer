import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:widget_compose/widget/compound/card/product_info.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        print('Click Product!');
      },
      child: SizedBox(
        height: 190,
        width: 150,
        child: Stack(
          children: <Widget>[
            Image.network(
              'https://images.unsplash.com/photo-1713551456730-ba311f8c940c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 150,
              fit: BoxFit.cover,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: ProductInfo()
            ),
          ],
        ),
      ),
    );
  }
}
