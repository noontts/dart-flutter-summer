import 'package:flutter/material.dart';
import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/widget/compound/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widget/compound/navbar/home_navbar.dart';
import 'package:widget_compose/widget/compound/section/catalog.dart';

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
        child: Column(children: [
          const HomeNavbar(),
          Expanded(
            child: ListView(
            children: [
              const HomeJumbotron(),
              Catalog(title: "Most Popular Outerwear", products: products),
              const HomeJumbotron(),
              Catalog(title: "Most Popular Outerwear", products: products),
            ],
          ))
        ]),
      ),
    );
  }
}
