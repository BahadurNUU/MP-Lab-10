import 'package:flutter/material.dart';
import 'package:mp_lab_10/animated_logo.dart';
import 'title_widget.dart';
import 'counter_widget.dart';
import 'animated_widget.dart';
import 'animated_logo.dart';
import 'gesture.dart';
import 'animated_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Toggle Example'),
          actions: [
            Switch(
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Wrap(
                runSpacing: 20,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blueAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Blue',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.redAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Red',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.greenAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Green',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.purpleAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Purple',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.orangeAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Orange',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellowAccent,
                        child: Center(
                          child: const MyTitleWidget(
                            title: 'Yellow',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const MyCounterWidget(),
              const SizedBox(height: 40),
              const AnimatedContainerWidget(),
              const SizedBox(height: 40),
              Column(
                children: [
                  const MyTitleWidget(
                    title: 'Animated Logo',
                    color: Colors.blueAccent,
                  ),
                  const AnimatedLogo(),
                  const SizedBox(height: 40),
                  const MyGestureWidget(),
                  const SizedBox(height: 40),
                  const MyTitleWidget(title: 'Add New Item', color: Colors.blueAccent),
                  const MyAnimatedList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
