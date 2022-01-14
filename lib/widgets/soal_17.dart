import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_17 extends StatelessWidget {
  const Soal_17({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 17'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              } else {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              }
            }));
  }
}
