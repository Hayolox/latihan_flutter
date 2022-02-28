import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:http/http.dart' as MyHttp;

class FtrBuilder extends StatefulWidget {
  const FtrBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<FtrBuilder> createState() => _FtrBuilderState();
}

class _FtrBuilderState extends State<FtrBuilder> {
  List<Map<String, dynamic>> allUser = [];

  Future GetAll() async {
    try {
      var response = await MyHttp.get(Uri.parse('https://reqres.in/api/users'));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allUser.add(element);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const FlutterLogo(),
          title: const Text('Future Builder'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: FutureBuilder(
            future: GetAll(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('Loading........'),
                );
              } else {
                return ListView.builder(
                    itemCount: allUser.length,
                    itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Text(
                                    'yes',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    allUser[index]['first_name'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Tes',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ));
              }
              ;
            }));
  }
}
