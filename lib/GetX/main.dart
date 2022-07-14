import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class Controller extends GetxController {
  static Controller get to => Get.find();
  int valor = 0;

  _incrementaValor() {
    valor++;
    update();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: GetBuilder<Controller>(
          init: Controller(),
          builder: (_) {
            return Center(
              child: GestureDetector(
                onTap: () => Get.find<Controller>()._incrementaValor(),
                child: Text(
                  "Valor = ${Get.find<Controller>().valor}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          }),
    ));
  }
}
