import 'package:flutter/material.dart';
import 'MyBox.dart';

void main() => runApp(const MyApp());

List<String> famousHaiku = [
  "Майские дожди! Заплыла лягушка… В дом через порог.",
  "На мертвой ветке Чернеет ворон… Осенний вечер…",
  "Мой палисадник… Здесь впервые сегодня расцвел сакура.",
  "Ветер в горах… Свет месяца скользит по снегу.",
  "Свет месяца скользит по снегу… Ветер в горах…",
  "Подснежник… Весенний ветерок качает головой.",
  "Весенний ветерок качает головой… Подснежник…",
  "Звезды на небе… На ветке сидит соловей.",
  "На ветке сидит соловей… Звезды на небе…",
  "Вечерний дождь… Вода каплет на крыше.",
  "Вода каплет на крыше… Вечерний дождь…",
  "Свет месяца… Ветер шумит в соснах.",
  "Ветер шумит в соснах… Свет месяца…",
  "Утренний туман… Слышен только звук ручья.",
  "Слышен только звук ручья… Утренний туман…",
  "Ветер в полях… Пшеничные колосья шепчутся.",
  "Пшеничные колосья шепчутся… Ветер в полях…",
  "Свет месяца… Ветер играет с листьями.",
  "Ветер играет с листьями… Свет месяца…",
  "Звезды на небе… Ветер шепчет тайны.",
  "Ветер шепчет тайны… Звезды на небе…",
  "Утренний туман… Ветер играет с цветами.",
  "Ветер играет с цветами… Утренний туман…",
  "Свет месяца… Ветер шепчет истории.",
  "Ветер шепчет истории… Свет месяца…",
  "Звезды на небе… Ветер носит ароматы.",
  "Ветер носит ароматы… Звезды на небе…",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(children: <Widget>[
      SizedBox(
          width: 500,
          height: 300,
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              GestureDetector(
                onTap: () => {print('LALALA')},
                child: Container(
                  height: 80,
                  width: 80,
                  color: Colors.indigo,
                  margin: const EdgeInsets.all(10),
                ),
              ),
              GestureDetector(
                onTap: () => {print('blablabla')},
                child: Container(
                  height: 80,
                  width: 80,
                  color: Colors.indigo,
                  margin: const EdgeInsets.all(10),
                ),
              ),
              GestureDetector(
                onTap: () => {print('Kahana tzadak')},
                child: Container(
                  height: 80,
                  width: 80,
                  color: Colors.indigo,
                  margin: const EdgeInsets.all(10),
                ),
              ),
              GestureDetector(
                onDoubleTap: () => {print('HOHOHO!')},
                child: MyBox(),
              )
            ],
          )),
      SizedBox(
          width: 500,
          height: 250,
          child: GridView.builder(
          // shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: famousHaiku.length,
              itemBuilder: (context, index) {
                print('I\'m builder🤖💩 $index');
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(famousHaiku[index]),
                );
              })),
              Row(
            children: [
      SizedBox(
          width: 300,
          height: 150,
          child: 
              GridView.extent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: const [
                  MyBox(),
                  MyBox(),
                  MyBox(),
                  MyBox(),
                  MyBox(),
                ],
              )
          )
            ],
          )
    ])));
  }
}
