import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_10 extends StatelessWidget {
  const Soal_10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 10'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hellow',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'Hellow',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            )
          ],
        ));
  }
}
