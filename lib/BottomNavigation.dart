import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  var _currentpage = 0;
  var _pages = [
    Text("Page 1 - Announcements"),
    Text("Page 2 - Birthdays"),
    Text("Page 3 - Data"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Bottom Navigation",
        home: Scaffold(
          body: Center(child: _pages.elementAt(_currentpage)),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.announcement), label: "Announcements"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cake), label: "Birthdays"),
              BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Data"),
            ],
            currentIndex: _currentpage,
            fixedColor: Colors.red,
            onTap: (int inIndex) {
              setState(() {
                _currentpage = inIndex;
              });
            },
          ),
        ));
  }
}
