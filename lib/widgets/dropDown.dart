import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class dropDown extends StatelessWidget {
  final List<String> data = ['Akil', 'Udin', 'Samsudin', 'Ucup'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown'),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownSearch<String>(
            mode: Mode.BOTTOM_SHEET,
            showSelectedItems: true,
            items: data,
            label: "Menu mode",
            hint: "country in menu mode",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "Brazil"),
      ),
    );
  }
}
