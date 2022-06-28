import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Playground',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: Center(
          child: Chip(
              label: Text("Caio Vinicius"),
              avatar: CircleAvatar(
                backgroundImage: AssetImage("img/caio.png"),
              ),
              backgroundColor: Colors.grey.shade300),
        ),
      ),
    );
  }
}
