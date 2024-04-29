import 'package:flutter/material.dart';

class SmallText extends StatelessWidget{
  const SmallText({super.key, required this.title, this.color});

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 12,
      ),
    );
  }
}
