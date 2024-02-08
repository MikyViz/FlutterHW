import 'package:flutter/material.dart';

void main() {
  var usersList = [
    User("Miky", 30, "vizenovsky@gmail.com"),
    User("Maty", 5, "junior@gmail.com"),
    User("Adi", 2, "dukba@gmail.com"),
    User("Sara", 28, "sara150196@gmail.com")
  ];
  for (int i = 4; i > 4; i--) {
    print(usersList[i]);
  }
}

class User {
  String name;
  int age;
  String email;
  User(this.name, this.age, this.email);
}
