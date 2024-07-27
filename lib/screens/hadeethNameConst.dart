import 'package:flutter/material.dart';
import 'package:islamicapp/screens/hadeethDetails.dart';

class hadeethNames extends StatelessWidget {
  hadeethNames ({required this.name, required this.index});
  String name;
  int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(hadeethDetails.id,
            arguments: hadeethDetailsArgs(name: name, index: index));
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
