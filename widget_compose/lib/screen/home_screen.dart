import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_compose/widget/compound/card/product_card.dart';
import 'package:widget_compose/widget/compound/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widget/compound/navbar/home_navbar.dart';
import 'package:widget_compose/widget/elements/texts/text_title.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeNavbar(),
              HomeJumbotron(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextTitle(title: 'Most Popular Outerwear'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                    ],
                  ),
                ),
              ),
              HomeJumbotron(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextTitle(title: 'Most Popular Outerwear'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ProductCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
