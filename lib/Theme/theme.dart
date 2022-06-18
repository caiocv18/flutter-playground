import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF555555),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.brown),
          scaffoldBackgroundColor: Colors.purple,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF555555))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _StateTheme createState() => _StateTheme();
}

class _StateTheme extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              print("Clicking");
            },
            child: Text(
              "Click!",
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green)),
      ),
    );
  }
}
