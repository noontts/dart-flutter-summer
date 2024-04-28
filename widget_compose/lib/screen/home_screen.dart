import 'package:flutter/material.dart';
import 'package:widget_compose/widget/compound/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widget/compound/navbar/home_navbar.dart';
import 'package:widget_compose/widget/elements/button/primary_button.dart';
import 'package:widget_compose/widget/elements/texts/big_text.dart';
import 'package:widget_compose/widget/elements/texts/price_text.dart';
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
        child: Column(
          children: [
            HomeNavbar(),
            HomeJumbotron(),
          ],
        ),
      ),
    );
  }
}
