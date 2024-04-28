import 'package:flutter/material.dart';
import 'package:widget_compose/widget/elements/button/primary_button.dart';
import 'package:widget_compose/widget/elements/texts/big_text.dart';

class HomeJumbotron extends StatelessWidget {
  const HomeJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1714165860646-b8de17af3bc8?q=80&w=2969&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BigText(title: 'OUTERWEAR'),
                      PrimaryButton(title: 'View Collection', titleColor: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
