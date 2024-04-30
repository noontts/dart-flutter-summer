import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeNavbar(),
              const HomeJumbotron(),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 8.0),
                  child: TextTitle(title: 'Most Popular Outerwear'),
                ),
              ),
              SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                      children: const <Widget>[
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
              const HomeJumbotron(),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextTitle(title: 'Most Popular Coating'),
                ),
              ),
              SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
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
            ],
          ),
        ),
      ),
    );
  }
}
