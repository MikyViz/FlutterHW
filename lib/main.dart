import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: 1500,
          width: 1500,
            child: ListView(
          children: [
            Container(
                height: 200,
                color: Color.fromARGB(255, 196, 147, 33),
                child: Center(child: Counter())),
            Container(
                height: 200,
                color: Color.fromARGB(255, 141, 18, 57),
                child: Center(child: Counter())),
            Container(
                height: 200,
                color: Color.fromARGB(255, 23, 127, 26),
                child: Center(child: Counter())),
            Container(
                height: 200,
                color: Color.fromARGB(255, 119, 44, 148),
                child: Center(child: Counter())),
          ],
        )
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  void updateCounterPlus() {
    setState(() {
      counter++;
    });
  }

  void updateCounterMinus() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: updateCounterPlus, child: Text("+")),
        ElevatedButton(onPressed: updateCounterMinus, child: Text("-")),
        Text("$counter")
      ],
    );
  }
}
