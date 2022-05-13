import 'package:flutter/material.dart';
import 'package:playground/VideoGrafico01-Projeto-Apresentando-Widgets/home2_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Caio Vinicius",
            style: TextStyle(color: Colors.red),
          ),
        ),
        actions: [
          Column(
            children: [
              Text("+"),
              Text("/"),
            ],
          )
        ],
      ),
      drawer: Drawer(),
      body: Center(
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home2Page()),
                );
              },
              child: Text(":)"))),
    );
  }
}
