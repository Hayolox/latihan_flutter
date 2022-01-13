import 'package:flutter/material.dart';

class Soal_2 extends StatelessWidget {
  const Soal_2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Text 2'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
        child: Text(
          'Hello Word',
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
