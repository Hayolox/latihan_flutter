import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class StatlesAndStatefull extends StatefulWidget {
  const StatlesAndStatefull({
    Key? key,
  }) : super(key: key);

  @override
  State<StatlesAndStatefull> createState() => _StatlesAndStatefullState();
}

class _StatlesAndStatefullState extends State<StatlesAndStatefull> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('StatlesAndStatefull'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$nilai',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai - 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai + 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.add))
                ],
              )
            ],
          ),
        ));
  }
}
