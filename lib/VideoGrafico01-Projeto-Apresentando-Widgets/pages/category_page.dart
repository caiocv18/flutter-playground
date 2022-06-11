import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Category"),
        ),
        body: Container(
            child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).canPop()
                ? Navigator.of(context).pop()
                : print("Error, can't pop");
          },
          child: Text("Close screen"),
        )));
  }
}
