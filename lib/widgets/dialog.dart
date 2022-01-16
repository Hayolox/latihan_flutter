import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class dialog extends StatelessWidget {
  const dialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('dialog'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Delete Data'),
                    content:
                        Text('apakah anda yakin untuk menghapus data ini?'),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('Tidak')),
                      ElevatedButton(onPressed: () {}, child: Text('Yakin'))
                    ],
                  ),
                );
              },
              child: Text('Klik disini')),
        ));
  }
}
