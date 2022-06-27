import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Playground',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
          child: Container(
        color: Colors.yellow,
        child: Transform(
          transform: Matrix4.skewY(0.4)..rotateZ(-4 / 12.0),
          alignment: Alignment.bottomLeft,
          child: Container(
              padding: const EdgeInsets.all(12.0),
              color: Colors.red,
              child: Text("Transform")),
        ),
      )),
    );
  }
}
