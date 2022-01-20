import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class textField extends StatefulWidget {
  const textField({
    Key? key,
  }) : super(key: key);

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  bool IsHideen = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('textField'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
            child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            TextField(
              controller: emailC,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  label: Text('Email'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passC,
              autocorrect: false,
              obscureText: IsHideen,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  label: Text('Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(Icons.vpn_key),
                  suffix: IconButton(
                      onPressed: () {
                        if (IsHideen == true) {
                          IsHideen = false;
                        } else
                          (IsHideen = true);
                        setState(() {});
                      },
                      icon: Icon(Icons.remove_red_eye))),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                print('Email : ${emailC.text} dan password : ${passC.text}');
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            )
          ],
        )));
  }
}
