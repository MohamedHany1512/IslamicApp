import 'package:islamicapp/main.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double _rotationAngle = 0.0;
  int counter = 0;
  String zekr = 'سبحان الله';

  void rotateImage() {
    setState(() {
      _rotationAngle += 45.0;
    });
  }

  void _incrementCounter() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        zekr = zekr == 'سبحان الله' ? 'الله أكبر' : 'سبحان الله';
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
        Text(
          'إسلامي',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Transform.rotate(
          angle: _rotationAngle * (3.141592653589793 / 180),
          child: Image.asset('dark mode/body_sebha_dark.png'),
        ),
        Text(
          'عدد التسبيحات',
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              '$counter',
              style: TextStyle(
                  fontSize: 24.sp, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.yellowAccent,
          ),
          child: TextButton(
            onPressed: _incrementCounter,
            child: Text(
              '$zekr',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
          ),
        ),
      ],
    );
  }
}
