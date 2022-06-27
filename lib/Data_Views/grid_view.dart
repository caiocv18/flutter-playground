import 'package:flutter/material.dart';
import 'package:playground/My_Exercises/semaphore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(4.0),
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
        ],
      ),
    ));
  }
}
