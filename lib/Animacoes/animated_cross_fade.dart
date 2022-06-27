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
  var _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
            firstChild:
                FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
            secondChild:
                FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 2)),
        ElevatedButton(
            onPressed: () {
              _showFirst = false;
              setState(() {});
            },
            child: Text("Cross-Fade!"))
      ],
    ))));
  }
}
