import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_12 extends StatelessWidget {
  const Soal_12({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 12'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(
                  height: 20,
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
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(
                  height: 20,
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
            )
          ],
        ));
  }
}
