import 'package:flutter/material.dart';
import 'package:playground/My_Exercises/semaphore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          DataTable(columns: [
            DataColumn(label: Text("First Name")),
            DataColumn(label: Text("Last Name"))
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Leia")),
              DataCell(Text("Organa"), showEditIcon: true)
            ]),
            DataRow(cells: [
              DataCell(Text("Luke")),
              DataCell(Text("Skywalker"), showEditIcon: true)
            ]),
            DataRow(cells: [
              DataCell(Text("Han")),
              DataCell(Text("Solo"), showEditIcon: true)
            ])
          ]),
        ],
      ),
    ));
  }
}
