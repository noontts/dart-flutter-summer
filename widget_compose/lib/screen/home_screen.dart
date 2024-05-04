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
              const HomeJumbotron(
                imageUrl:
                    'https://images.unsplash.com/photo-1709037813912-f2b0cfa924e4?q=80&w=2972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: "New Collection",
              ),
              Catalog(title: "Most Popular Outerwear", products: products),
              const HomeJumbotron(
                imageUrl:
                    'https://images.unsplash.com/photo-1530541930197-ff16ac917b0e?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: "Winter Collection",
              ),
              Catalog(title: "Most Popular Outerwear", products: products),
            ],
          ))
        ]),
      ),
    );
  }
}
