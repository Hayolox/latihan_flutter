import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:http/http.dart' as http;
import 'package:latihan_flutter/model/user.dart';
import 'package:lottie/lottie.dart';

class ftrBuilder extends StatelessWidget {
  List<UserModel> allUser = [];
  Future getAllUser() async {
    try {
      var response = await http.get(Uri.parse('https://reqres.in/api/users'));
      List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allUser.add(UserModel.fromJson(element));
      });
      print(allUser);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Future Builder'),
            centerTitle: true,
          ),
          body: FutureBuilder(
              future: getAllUser(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Lottie.asset('assets/lottie/load.json'),
                  );
                } else {
                  return ListView.builder(
                    itemCount: allUser.length,
                    itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(allUser[index].avatar),
                      ),
                      title: Text('${allUser[index].firstName}'),
                      subtitle: Text('${allUser[index].email}'),
                    ),
                  );
                }
              })),
    );
  }
}
