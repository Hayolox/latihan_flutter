import 'dart:math';

import 'package:flutter/material.dart';

class Soal_4 extends StatelessWidget {
  const Soal_4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Text 4'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
          child: Transform.rotate(
        angle: pi / 2,
        child: FlutterLogo(
          size: 200,
        ),
      )),
    );
  }
}
