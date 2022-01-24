import 'package:flutter/material.dart';
import './dialog.dart';
import './dropDown.dart';

class bottomNavigator extends StatefulWidget {
  const bottomNavigator({Key? key}) : super(key: key);

  @override
  State<bottomNavigator> createState() => _bottomNavigatorState();
}

class _bottomNavigatorState extends State<bottomNavigator> {
  @override
  List showWidget = [
    dialog(),
    dropDown(),
  ];
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
        centerTitle: true,
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[100],
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ]),
    );
  }
}
