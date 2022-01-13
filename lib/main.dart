import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/soal_1.dart';
import './widgets/soal_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Soal_2(),
    );
  }
}
