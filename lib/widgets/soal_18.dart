import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_18 extends StatelessWidget {
  const Soal_18({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 18'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: 50,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/id/${870 + index}/200/300'))),
                    child: Text(
                      'hello ${index + 1}',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                )));
  }
}
