import 'package:flutter/material.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) => Container(
                  height: 300,
                  // color: Colors.white,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print('Home'),
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                      ),
                      ListTile(
                        onTap: () => print('Musik'),
                        leading: Icon(Icons.music_note_outlined),
                        title: Text('Musik'),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel),
                        title: Text('Cancel'),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text('Bottom Sheet')),
      ),
    );
  }
}
