import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Soal_16 extends StatelessWidget {
  const Soal_16({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Text 16'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Hello'),
                ),
              )
            ],
          ),
        ));
  }
}
