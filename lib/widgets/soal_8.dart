import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_8 extends StatelessWidget {
  const Soal_8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 8'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
