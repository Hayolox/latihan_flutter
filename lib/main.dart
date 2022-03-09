import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/delete_api.dart';
import 'package:latihan_flutter/widgets/future_builder.dart';
import 'package:latihan_flutter/widgets/getX.dart';
import 'package:latihan_flutter/widgets/get_api.dart';
import 'package:latihan_flutter/widgets/post_api.dart';
import 'package:latihan_flutter/widgets/put_api.dart';
import './widgets/soal_1.dart';
import './widgets/soal_2.dart';
import './widgets/soal_3.dart';
import './widgets/soal_4.dart';
import './widgets/soal_5.dart';
import './widgets/soal_6.dart';
import './widgets/soal_7.dart';
import './widgets/soal_8.dart';
import './widgets/soal_9.dart';
import './widgets/soal_10.dart';
import './widgets/soal_11.dart';
import './widgets/soal_12.dart';
import './widgets/soal_13.dart';
import './widgets/soal_14.dart';
import './widgets/soal_15.dart';
import './widgets/soal_16.dart';
import './widgets/soal_17.dart';
import './widgets/soal_18.dart';
import './widgets/StatlesAndStatefull.dart';
import './widgets/dialog.dart';
import 'widgets/snackBar.dart';
import 'widgets/textField.dart';
import 'widgets/tabBar_Latihan.dart';
import 'widgets/dropDown.dart';
import 'widgets/bottomNav.dart';
import 'widgets/bottomSheet.dart';
import 'widgets/drawer.dart';
import 'widgets/navigator.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      home: GetXTr(),
    );
  }
}
