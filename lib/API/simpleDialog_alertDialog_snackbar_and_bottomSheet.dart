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
    Future _showIt() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
                title: Text("What's your favorite food?"),
                children: [
                  SimpleDialogOption(
                      onPressed: () => Navigator.pop(context, "brocolli"),
                      child: Text("Brocolli")),
                  SimpleDialogOption(
                      onPressed: () => Navigator.pop(context, "steak"),
                      child: Text("Steak")),
                ]);
          })) {
        case "brocolli":
          print("Brocolli");
          break;
        case "steak":
          print("Steak");
          break;
      }
    }

    _showAlert() {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("We come in peace..."),
              content: Center(
                  child: Text("...shoot to kill shoot to kill shoot to kill")),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Beam me up, Scotty!"))
              ],
            );
          });
    }

    _showSnackBar() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
        content: Text("I like pie!"),
        action: SnackBarAction(
          label: "Chown down",
          onPressed: () => print("gettin' fat!"),
        ),
      ));
    }

    _showBottomSheet() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return new Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("What's your favorite pet?"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      print("Dog");
                    },
                    child: Text("Dog")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      print("Cat");
                    },
                    child: Text("Cat")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      print("Fish");
                    },
                    child: Text("Fish"))
              ],
            );
          });
    }

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Text("Show it"),
            onPressed: _showIt,
          ),
          ElevatedButton(
            child: Text("Show alert"),
            onPressed: _showAlert,
          ),
          ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: _showSnackBar,
          ),
          ElevatedButton(
            child: Text("Show BottomSheet"),
            onPressed: _showBottomSheet,
          ),
        ],
      ),
    ));
  }
}
