import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double width = 150;
  double height = 150;
  Color color = Colors.deepOrangeAccent;

  void _changeContainer() {
    setState(() {
      width = width == 150 ? 200 : 150;
      height = height == 150 ? 200 : 150;
      color = color == Colors.deepOrangeAccent ? Colors.redAccent : Colors.deepOrangeAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: GestureDetector(
      onTap: _changeContainer,
      child: AnimatedContainer(width: width, height: height, color: color, duration: const Duration(milliseconds: 300), curve: Curves.easeOut)

    ),);
  }
}