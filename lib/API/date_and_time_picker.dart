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
  Future<void> _selectDate(context) async {
    DateTime? selectDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(20222));
    print(selectDate);
  }

  Future<void> _selectTime(context) async {
    TimeOfDay? selectTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    print(selectTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 50,
        ),
        ElevatedButton(
            onPressed: () => _selectDate(context),
            child: const Text("Test DatePicker")),
        ElevatedButton(
            onPressed: () => _selectTime(context),
            child: const Text("Test TimePicker")),
      ],
    ));
  }
}
