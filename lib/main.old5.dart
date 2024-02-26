
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              width: 1300,
              height: 1200,
              color: Color.fromARGB(255, 38, 33, 101),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                    height: 500,
                    width: 500,
                    color: Color.fromARGB(255, 146, 116, 25),
                    child: DynamycBox(),
                  ),
                  Container(
                    height: 500,
                    width: 500,
                    color: Color.fromARGB(255, 25, 146, 73),
                    child: DynamycBox(),
                  ),
                  Container(
                    height: 500,
                    width: 500,
                    color: Color.fromARGB(255, 146, 25, 57),
                    child: DynamycBox(),
                  ),
                  Container(
                    height: 500,
                    width: 500,
                    color: Color.fromARGB(255, 82, 25, 146),
                    child: DynamycBox(),
                  ),
                ],
              ))),
    );
  }
}

class DynamycBox extends StatefulWidget {
  @override
  State<DynamycBox> createState() => _DynamycBox();
}

class _DynamycBox extends State<DynamycBox> {
  var _sizeVar = 15.00;

   void updateSizePlus() {
    setState(() {
      _sizeVar+=5;
    });
  }
   void updateSizeMinus() {
    setState(() {
      _sizeVar-=5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(_sizeVar),
      color: Colors.white,
      child:Row(
      children: [
        ElevatedButton(onPressed: updateSizePlus, child: Text("+")),
        ElevatedButton(onPressed: updateSizeMinus, child: Text("-")),
        Text("$_sizeVar 🫎")
      ],
    )
    );
  }
}
