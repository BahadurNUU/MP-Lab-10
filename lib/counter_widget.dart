import 'package:flutter/material.dart';
import 'title_widget.dart';

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  _MyCounterWidgetState createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyTitleWidget(title: 'Counter: $_counter', color: Colors.black),
        const SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: _decrementCounter,
            child: const Text('Decrement'),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment'),
        ),
        ]),
      ],
    );
  }
}