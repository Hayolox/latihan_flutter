import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> with SingleTickerProviderStateMixin {
  late TabController TabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Whatshapp'),
        centerTitle: false,
        bottom: TabBar(
          controller: TabC,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Call'),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: TabC,
        children: [
          Center(child: Text('data foto')),
          Center(child: Text('body chats')),
          Center(child: Text('body status')),
          Center(child: Text('body call'))
        ],
      ),
    );
  }
}
