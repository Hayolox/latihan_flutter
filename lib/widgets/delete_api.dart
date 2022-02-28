import 'dart:convert';

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/snackBar.dart';
import 'package:http/http.dart' as MyHttp;

class deleteApi extends StatefulWidget {
  const deleteApi({
    Key? key,
  }) : super(key: key);

  @override
  State<deleteApi> createState() => _deleteApiState();
}

class _deleteApiState extends State<deleteApi> {
  late String textData;

  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

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
          leading: const FlutterLogo(),
          title: const Text('Delete Api'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ElevatedButton(
              onPressed: () async {
                var GetData = await MyHttp.get(
                  Uri.parse('https://reqres.in/api/users/2'),
                );
                Map<String, dynamic> data =
                    json.decode(GetData.body) as Map<String, dynamic>;
                setState(() {
                  textData = data['data']['email'];
                });
              },
              child: Text('Get Data'),
            ),
            ElevatedButton(
              onPressed: () async {
                var DeleteData = await MyHttp.delete(
                  Uri.parse('https://reqres.in/api/users/2'),
                );
                if (DeleteData.statusCode == 204) {
                  print('Berhasil');
                  setState(() {
                    textData = 'Belum ada data';
                  });
                } else {
                  print('gagal');
                }
              },
              child: Text('Submit'),
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            Text(textData),
          ],
        ));
  }
}
