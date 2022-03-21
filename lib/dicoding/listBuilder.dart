import 'package:flutter/material.dart';

class Listbuilder extends StatelessWidget {
  Listbuilder({Key? key}) : super(key: key);

  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: numberList.length,
      itemBuilder: (context, index) {
        return Container(
          child: Text(numberList[index].toString()),
        );
      },
    ));
  }
}
