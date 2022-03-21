import 'package:flutter/material.dart';

class MapList extends StatelessWidget {
  MapList({Key? key}) : super(key: key);

  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((e) => Text('$e')).toList(),
      ),
    );
  }
}
