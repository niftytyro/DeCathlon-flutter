import 'package:decathlon_clone/screens/Home/Home.dart';
import 'package:decathlon_clone/screens/catalog/Catalog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0x505130),
      ),
      routes: {
        Home.path: (context) => Home(),
        Catalog.path: (context) => Catalog(),
      },
      home: Home(),
    );
  }
}
