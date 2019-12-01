import 'package:flutter/material.dart';
import 'package:fluttertube/screens/index.dart';
import 'package:fluttertube/service/api.dart';

void main() {
  Api api = Api();
  api.search("matue");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttertube',
      home: Home(),
    );
  }
}