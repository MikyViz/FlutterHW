import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Achla exrsice for StatefullWidget")),
        body: DynamicColorChanger(),
      ),
    );
  }
}

class DynamicColorChanger extends StatefulWidget {
  @override
  State<DynamicColorChanger> createState() => _DynamicColorChanger();
}

class _DynamicColorChanger extends State<DynamicColorChanger> {
  Color _selectedColor = Colors.indigo;
  final List<Color> _colors = [
    Colors.indigo,
    Color.fromARGB(255, 135, 116, 80),
    Color.fromARGB(255, 173, 75, 111),
    Color.fromARGB(255, 55, 143, 68),
  ];
  void _changeColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<Color>(
            value: _selectedColor,
            items: _colors.map<DropdownMenuItem<Color>>((Color color) {
              return DropdownMenuItem<Color>(
                  value: color,
                  child: Container(
                    width: 100,
                    height: 20,
                    color: color,
                  ));
            }).toList(),
            onChanged: (Color? x) {
              if (x != null) {
                _changeColor(x);
              }
            }),
            Expanded(
              child: Container(
                color: _selectedColor,
                child: const Center(
                  child: Text(
                    '🦍 хм...',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              )
      ],
    );
  }
}
