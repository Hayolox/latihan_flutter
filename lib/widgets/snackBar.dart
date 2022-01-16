import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/snackBar.dart';

class snackBarr extends StatelessWidget {
  const snackBarr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('SnackBar Tes'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'akil',
                    style: TextStyle(color: Colors.black),
                  ),
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.white,
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  action: SnackBarAction(
                    label: 'Batalkan',
                    onPressed: () {
                      print('Batalkan');
                    },
                  ),
                ));
              },
              child: Text('Klik disini')),
        ));
  }
}
