import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: 
        Column(
          children: [
          SizedBox(
          width: 400,
            child: GridView.count(
          crossAxisCount: 2,
          children:const [
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            ]
          )
          ),
             SizedBox(
              width: 600,
            child: GridView.count(
          crossAxisCount: 3,
          scrollDirection: Axis.horizontal,
          children:const [
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
            MyBox(),
          ],
        ),
          ),
          ],
        ),
        
      ),
    );
  }
}

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
