import 'dart:convert';

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/snackBar.dart';
import 'package:http/http.dart' as MyHttp;

class getApi extends StatefulWidget {
  const getApi({
    Key? key,
  }) : super(key: key);

  @override
  State<getApi> createState() => _getApiState();
}

class _getApiState extends State<getApi> {
  late String textData;
  @override
  void initState() {
    // TODO: implement initState
    textData = 'Belum ada data';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Get Api'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textData),
              ElevatedButton(
                  onPressed: () async {
                    int a = 2;
                    if (a == 1) {
                      print('gagal');
                    } else {
                      var GetData = await MyHttp.get(
                          Uri.parse('https://reqres.in/api/users/22222222'));
                      if (GetData.statusCode == 200) {
                        print('berhasil');
                        Map<String, dynamic> data =
                            json.decode(GetData.body) as Map<String, dynamic>;
                        setState(() {
                          textData = data['data']['email'].toString();
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Gagal',
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
                      }
                      ;
                    }
                  },
                  child: Text('Klik disini')),
            ],
          ),
        ));
  }
}
