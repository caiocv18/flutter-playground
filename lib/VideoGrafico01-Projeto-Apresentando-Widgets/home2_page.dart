import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home2PageState();
  }
}

class _Home2PageState extends State<Home2Page> {
  var name = "Caio Vinicius";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Text("Alterando estado"),
          FlatButton(
            onPressed: () {
              setState(() {
                name = "Caiozin 2";
              });
            },
            child: Text("Alterando nome"),
          )
        ],
      ),
    );
  }
}
