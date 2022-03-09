import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXTr extends StatelessWidget {
  const GetXTr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    print('tes');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                '${c.count.value}',
                style: TextStyle(
                  fontSize: 30,
                ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.kurang();
                  },
                  child: Text(
                    'Kurang',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Akil', 'Berhasil ditambahkan',
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(
                          seconds: 2,
                        ),
                        margin: EdgeInsets.all(30),
                        colorText: Colors.white,
                        backgroundColor: Colors.red);
                    c.tambah();
                  },
                  child: Text('Tambah'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 0.obs;
  tambah() => count + 1;
  kurang() => count - 1;
}
