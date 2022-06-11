import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print("Home2Page create state");
    return _Home2PageState();
  }
}

class _Home2PageState extends State<Home2Page> {
  var name = "Caio Vinicius";

  _Home2PageState() {
    print("_Home2PageState constructor");
  }

  @override
  //Jamais poderá ser async
  void initState() {
    super.initState();
    print("_Home2PageState InitState");
    //Processamento assíncrono
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        name = "Caio Vinicius";
      });
    });
  }

  @override
  void didChangeDependencies() {
    print("_Home2PageState didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("_Home2PageState build");
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
