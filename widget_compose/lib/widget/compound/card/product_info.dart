import 'package:flutter/material.dart';
import 'package:widget_compose/widget/elements/texts/price_text.dart';
import 'package:widget_compose/widget/elements/texts/small_text.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(title: 'Mid-length Coat'),
            PriceText(title: '20', color: Colors.white,)
          ],
        ),
      ),
    ); 
  }
}
