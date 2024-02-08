import 'package:flutter/material.dart';

void main() => runApp(const MyBox());

class MyBox extends StatelessWidget{
  const MyBox( {super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      width: 80,
      color: Colors.indigo,
      margin: const EdgeInsets.all(10),
      child: const Text('Prog23-24'),
    );
  }
}
