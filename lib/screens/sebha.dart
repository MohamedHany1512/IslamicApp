import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:islamicapp/theme.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double _rotationAngle = 0.0;
  int counter = 0;
  int zekrIndex = 0;
  final List<String> azkar = const [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
    'أستغفر الله',
    'لا حول ولا قوة إلا بالله',
    'اللهم صل وسلم على نبينا محمد',
  ];

  void rotateImage() {
    setState(() {
      _rotationAngle += 45.0;
    });
  }

  void _incrementCounter() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        zekrIndex = (zekrIndex + 1) % azkar.length;
        counter = 0;
      }
      rotateImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'إسلامي',
          style: const TextStyle(fontSize: 28, color: AppColors.textPrimary),
        ),
        Transform.rotate(
          angle: _rotationAngle * (3.141592653589793 / 180),
          child: Image.asset('dark mode/body_sebha_dark.png'),
        ),
        const Text(
          'عدد التسبيحات',
          style: const TextStyle(
              fontSize: 28,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              '$counter',
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColors.gold,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.emerald,
          ),
          child: TextButton(
            onPressed: _incrementCounter,
            child: Text(
              azkar[zekrIndex],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.navy,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
          ),
        ),
      ],
    );
  }
}
