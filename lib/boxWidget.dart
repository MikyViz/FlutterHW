import 'package:flutter/material.dart';

void main() => runApp(const Box());

class Box extends StatelessWidget {
  final textValue;
  final color;

  const Box({
    this.textValue = "Я учу флатер!",
    this.color = Colors.indigo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: DefaultTextStyle(
          style: TextStyle(color: Color.fromARGB(255, 55, 49, 68)),
          child: Text(this.textValue),
        ));
  }
}
