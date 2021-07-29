import 'package:figmadesign_project/Pages/Myhomepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapplication());

class Myapplication extends StatelessWidget {
  const Myapplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      title: 'demo project',
      home: MyHomePage(),
    );
  }
}
