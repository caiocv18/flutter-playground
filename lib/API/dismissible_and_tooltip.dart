import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 50,
        ),
        Dismissible(
            key: GlobalKey(),
            onDismissed: (direction) {
              print("Googbye!");
            },
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 50,
              child: Text("Swipe me"),
            )),
        Tooltip(
          message: "Tapping me will destroy the universe. Ouch!",
          child: ElevatedButton(
              onPressed: () => print("BOOM!"), child: Text("Do Not Tap!")),
        ),
      ],
    ));
  }
}
