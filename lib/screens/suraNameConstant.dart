import 'package:flutter/material.dart';
import 'package:islamicapp/screens/suraDetails.dart';

class suraName extends StatelessWidget {
  suraName({required this.name, required this.index});
  String name;
  int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(suraDetails.id,
            arguments: suraDetailsArgs(name: name, index: index));
      },
      child: Text(
        textAlign: TextAlign.center,
        name,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      ),
    );
  }
}
