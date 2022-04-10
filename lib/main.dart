import 'dart:ui';
import 'package:tugas/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "cerita rakyat",
      theme: ThemeData(primaryColor: Colors.blue),
      home: page1(),
    );
  }
}
