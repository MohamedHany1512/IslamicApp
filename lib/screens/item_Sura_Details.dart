import 'package:flutter/material.dart';

class itemSuraDetails extends StatelessWidget {
  itemSuraDetails({required this.name, required this.index});
  String name;
  int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      '$name {${index+1}}',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
    );
  }
}
