import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Semaphore"),
          ),
          body: Column(children: [
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  print('Green');
                },
                backgroundColor: Colors.green,
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  print('Yellow');
                },
                backgroundColor: Colors.yellow,
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  print('Red');
                },
                backgroundColor: Colors.red,
              ),
            ),
          ])),
    );
  }
}
