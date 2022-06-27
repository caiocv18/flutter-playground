import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Playground',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyApp(),
    );
  }

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State {
  var _color = Colors.yellow;
  var _height = 200.0;
  var _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              color: _color,
              width: _width,
              height: _height,
            ),
            ElevatedButton(
              onPressed: () {
                _color = Colors.red;
                _height = 400.0;
                _width = 400.0;
                setState(() {});
              },
              child: Text("Animate!"),
            )
          ],
        ),
      ),
    ));
  }
}
