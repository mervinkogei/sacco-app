import 'package:flutter/material.dart';
import 'package:sacco_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anchor Sacco',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: MyHomePage(),
    );
  }
}

