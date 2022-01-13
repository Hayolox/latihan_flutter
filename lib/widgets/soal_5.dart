import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_5 extends StatelessWidget {
  const Soal_5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Text 5'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
          child: Container(
        height: 250,
        width: 250,
        color: Colors.blue,
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
