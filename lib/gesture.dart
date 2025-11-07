import 'package:flutter/material.dart';

class MyGestureWidget extends StatefulWidget {
  const MyGestureWidget({super.key});

  @override
  State<MyGestureWidget> createState() => _MyGestureWidgetState();
}

class _MyGestureWidgetState extends State<MyGestureWidget> {
  Color color = Colors.black;

  void _onSingleTap() {
    setState(() {
      color = Colors.blueAccent;
    });
  }

  void _onDoubleTap() {
    setState(() {
      color = Colors.greenAccent;
    });
  }

  void _onLongPress() {
    setState(() {
      color = Colors.redAccent;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onSingleTap,
      onDoubleTap: _onDoubleTap,
      onLongPress: _onLongPress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 150,
        height: 150,
        color: color,
        alignment: Alignment.center,
        child: const Text('Tap/Double Tap/\nLong Press', style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
