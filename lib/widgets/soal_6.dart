import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_6 extends StatelessWidget {
  const Soal_6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Text 6'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250 / 2),
          color: Colors.blue,
        ),
        height: 250,
        width: 250,
        child: Center(
          child: Text(
            'akil',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      )),
    );
  }
}
