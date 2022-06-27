import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DragTarget(
                builder: (context, candidateData, rejectedData) => Container(
                  width: 200,
                  height: 200,
                  color: Colors.lightBlue,
                ),
                onAccept: (data) => print(data),
              ),
              Container(
                height: 50,
              ),
              Draggable(
                  data: "I was dragged",
                  child: Container(width: 100, height: 100, color: Colors.red),
                  feedback:
                      Container(width: 100, height: 100, color: Colors.yellow)),
              LongPressDraggable(
                  data: "I was dragged after long press",
                  child: Container(width: 100, height: 100, color: Colors.red),
                  feedback:
                      Container(width: 100, height: 100, color: Colors.yellow))
            ],
          ),
        ),
      ),
    );
  }
}
