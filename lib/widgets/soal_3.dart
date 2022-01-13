import 'package:flutter/material.dart';

class Soal_3 extends StatelessWidget {
  const Soal_3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Text 3'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
          child: FlutterLogo(
        size: 200,
      )),
    );
  }
}
