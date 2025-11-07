import 'package:flutter/material.dart';

class MyTitleWidget extends StatelessWidget {
  final String title;
  final Color color;
  const MyTitleWidget({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}