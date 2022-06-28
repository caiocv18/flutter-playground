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
            child: PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Copy"),
              value: "copy",
            ),
            PopupMenuItem(
              child: Text("Cut"),
              value: "cut",
            ),
            PopupMenuItem(
              child: Text("Paste"),
              value: "paste",
            ),
          ],
          onSelected: (String result) {
            print(result);
          },
        )),
      ),
    );
  }
}
