import 'dart:convert';

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/snackBar.dart';
import 'package:http/http.dart' as MyHttp;

class postApi extends StatefulWidget {
  const postApi({
    Key? key,
  }) : super(key: key);

  @override
  State<postApi> createState() => _postApiState();
}

class _postApiState extends State<postApi> {
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
          title: const Text('Post Api'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              controller: nameC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nama',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: jobC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nama',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var PostData = await MyHttp.post(
                  Uri.parse('https://reqres.in/api/users'),
                  body: {"name": nameC.text, "job": jobC.text},
                );
                Map<String, dynamic> data =
                    json.decode(PostData.body) as Map<String, dynamic>;
                setState(() {
                  textData = data['name'];
                });
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
