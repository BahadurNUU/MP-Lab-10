import 'package:flutter/material.dart';
import 'title_widget.dart';
import 'counter_widget.dart';
import 'animated_widget.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Wrap(
          runSpacing: 20,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, spacing: 20, children: [
              Container(width: 100, height: 100, color: Colors.blueAccent, child: Center(child: const MyTitleWidget(title: 'Blue', color: Colors.white),),),
              Container(width: 100, height: 100, color: Colors.redAccent, child: Center(child: const MyTitleWidget(title: 'Red', color: Colors.white),),),
              Container(width: 100, height: 100, color: Colors.greenAccent, child: Center(child: const MyTitleWidget(title: 'Green', color: Colors.white),),),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center, spacing: 20, children: [
              Container(width: 100, height: 100, color: Colors.purpleAccent, child: Center(child: const MyTitleWidget(title: 'Purple', color: Colors.white),),),
              Container(width: 100, height: 100, color: Colors.orangeAccent, child: Center(child: const MyTitleWidget(title: 'Orange', color: Colors.white),),),
              Container(width: 100, height: 100, color: Colors.yellowAccent, child: Center(child: const MyTitleWidget(title: 'Yellow', color: Colors.white),),),
            ],),
            const MyCounterWidget(),
            const AnimatedContainerWidget(),
          ],
        ),
      ),
    );
  }
}
