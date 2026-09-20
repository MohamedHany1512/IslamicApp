import 'package:flutter/material.dart';
import 'package:islamicapp/theme.dart';

class itemSuraDetails extends StatelessWidget {
  itemSuraDetails({super.key, required this.name, required this.index});
  final String name;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Text(
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        '$name {${index + 1}}',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            height: 1.8,
            color: AppColors.textPrimary),
      ),
    );
  }
}
