import 'package:flutter/material.dart';
import 'package:islamicapp/screens/hadeethDetails.dart';
import 'package:islamicapp/theme.dart';

class hadeethNames extends StatelessWidget {
  hadeethNames({super.key, required this.name, required this.index});
  final String name;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(hadeethDetails.id,
            arguments: hadeethDetailsArgs(name: name, index: index));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.navyLight.withValues(alpha: 0.86),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.line),
        ),
        child: Text(
          textAlign: TextAlign.center,
          name,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AppColors.textPrimary),
        ),
      ),
    );
  }
}
